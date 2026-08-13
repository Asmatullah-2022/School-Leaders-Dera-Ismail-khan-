/// Pure validation helpers shared by every form in the app. Each returns an
/// ARB key (or null when valid) so the calling form can resolve it through
/// AppLocalizations for bilingual display.
class Validators {
  Validators._();

  static String? required(String? value) {
    if (value == null || value.trim().isEmpty) return 'validation_required';
    return null;
  }

  static String? nonNegativeNumber(num? value) {
    if (value == null) return 'validation_required';
    if (value < 0) return 'validation_nonNegative';
    return null;
  }

  static String? positiveNumber(num? value) {
    if (value == null) return 'validation_required';
    if (value <= 0) return 'validation_positive';
    return null;
  }

  static String? phone(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    final pattern = RegExp(r'^(\+92|0)?3\d{9}$');
    if (!pattern.hasMatch(value.trim())) return 'validation_invalidPhone';
    return null;
  }

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) return 'validation_required';
    final pattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    if (!pattern.hasMatch(value.trim())) return 'validation_invalidEmail';
    return null;
  }

  static String? minLength(String? value, int length) {
    if (value == null || value.length < length) return 'validation_minLength';
    return null;
  }

  static String? age(int? value, {int min = 0, int max = 120}) {
    if (value == null) return 'validation_required';
    if (value < min || value > max) return 'validation_invalidAge';
    return null;
  }

  static String? boysGirlsTotalMatch(int? boys, int? girls, int? total) {
    if (boys == null || girls == null || total == null) return 'validation_required';
    if (boys + girls != total) return 'validation_boysGirlsMismatch';
    return null;
  }

  static String? dateNotFuture(DateTime? date) {
    if (date == null) return 'validation_required';
    if (date.isAfter(DateTime.now())) return 'validation_dateInFuture';
    return null;
  }

  static String? endAfterStart(DateTime? start, DateTime? end) {
    if (start == null || end == null) return 'validation_required';
    if (end.isBefore(start)) return 'validation_endBeforeStart';
    return null;
  }
}
