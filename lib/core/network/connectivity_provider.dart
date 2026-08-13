import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<Connectivity> connectivityProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

/// Raw connectivity_plus result stream.
final StreamProvider<List<ConnectivityResult>> connectivityStreamProvider =
    StreamProvider<List<ConnectivityResult>>((ref) {
  return ref.watch(connectivityProvider).onConnectivityChanged;
});

/// Simplified online/offline boolean stream, deduplicated, with an initial
/// synchronous check so UI doesn't flash "offline" on first frame.
final StreamProvider<bool> isOnlineStreamProvider = StreamProvider<bool>((ref) async* {
  final Connectivity connectivity = ref.watch(connectivityProvider);
  final List<ConnectivityResult> initial = await connectivity.checkConnectivity();
  bool lastValue = !initial.contains(ConnectivityResult.none);
  yield lastValue;
  await for (final List<ConnectivityResult> result in connectivity.onConnectivityChanged) {
    final bool online = !result.contains(ConnectivityResult.none);
    if (online != lastValue) {
      lastValue = online;
      yield online;
    }
  }
});

/// Synchronous-ish read for widgets that just need "am I online right now".
final Provider<bool> isOnlineProvider = Provider<bool>((ref) {
  return ref.watch(isOnlineStreamProvider).maybeWhen(
        data: (bool value) => value,
        orElse: () => true,
      );
});
