/// Internal exceptions thrown by the data layer, caught by repositories and
/// translated into [Failure]s before ever reaching the UI.
///
/// [cause] is positional rather than named so the subclasses below can
/// forward it with real super-parameters.
class AppException implements Exception {
  const AppException(this.message, [this.cause]);

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppException: $message';
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'network-error', super.cause]);
}

class AuthException extends AppException {
  const AuthException([super.message = 'auth-error', super.cause]);
}

class PermissionDeniedException extends AppException {
  const PermissionDeniedException([super.message = 'permission-denied', super.cause]);
}
