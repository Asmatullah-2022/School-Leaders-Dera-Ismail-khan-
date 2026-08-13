/// Internal exceptions thrown by the data layer, caught by repositories and
/// translated into [Failure]s before ever reaching the UI.
class AppException implements Exception {
  const AppException(this.message, {this.cause});

  final String message;
  final Object? cause;

  @override
  String toString() => 'AppException: $message';
}

class NetworkException extends AppException {
  const NetworkException([String message = 'network-error', Object? cause])
      : super(message, cause: cause);
}

class AuthException extends AppException {
  const AuthException([String message = 'auth-error', Object? cause])
      : super(message, cause: cause);
}

class PermissionDeniedException extends AppException {
  const PermissionDeniedException([String message = 'permission-denied', Object? cause])
      : super(message, cause: cause);
}
