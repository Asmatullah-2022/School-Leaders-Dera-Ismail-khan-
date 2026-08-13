/// A user-safe representation of something that went wrong.
///
/// [messageKey] is an ARB key (resolved via AppLocalizations at the UI layer)
/// so failures are always shown to users in their chosen language — never as
/// raw exception text.
sealed class Failure {
  const Failure(this.messageKey, {this.details});

  final String messageKey;
  final String? details;
}

class NetworkFailure extends Failure {
  const NetworkFailure({super.details}) : super('common_error_network');
}

class AuthFailure extends Failure {
  const AuthFailure({super.details}) : super('common_error_auth');
}

class PermissionFailure extends Failure {
  const PermissionFailure({super.details}) : super('common_error_permission');
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.messageKey, {super.details});
}

class NotFoundFailure extends Failure {
  const NotFoundFailure({super.details}) : super('common_error_notFound');
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.details}) : super('common_error_unknown');
}
