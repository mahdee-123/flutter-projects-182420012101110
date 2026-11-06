class Validators {
  // name@domain.tld
  static final RegExp _email = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  // letters, space, . ' - (2 theke 50 char)
  static final RegExp _name = RegExp(r"^[a-zA-Z][a-zA-Z .'-]{1,49}$");

  // BD number: 01XXXXXXXXX, 8801XXXXXXXXX, +8801XXXXXXXXX
  static final RegExp _phone = RegExp(r'^(?:\+88|88)?01[3-9]\d{8}$');

  // min 8, 1 lowercase, 1 uppercase, 1 digit, 1 special
  static final RegExp _password = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>_\-]).{8,}$',
  );

  static String? name(String? v) {
    final value = v?.trim() ?? '';
    if (value.isEmpty) return 'Name dao';
    if (!_name.hasMatch(value)) return 'Valid name dao (2-50 letter)';
    return null;
  }

  static String? email(String? v) {
    final value = v?.trim() ?? '';
    if (value.isEmpty) return 'Email dao';
    if (!_email.hasMatch(value)) return 'Valid email dao';
    return null;
  }

  static String? phone(String? v) {
    final value = v?.trim() ?? '';
    if (value.isEmpty) return 'Phone number dao';
    if (!_phone.hasMatch(value)) return 'Valid BD number dao (01XXXXXXXXX)';
    return null;
  }

  // Register-er jonno: strong password lagbe
  static String? newPassword(String? v) {
    final value = v ?? '';
    if (value.isEmpty) return 'Password dao';
    if (!_password.hasMatch(value)) {
      return '8+ char, upper, lower, number ar special char lagbe';
    }
    return null;
  }

  // Sign in-er jonno: shudhu empty check
  static String? loginPassword(String? v) {
    if (v == null || v.isEmpty) return 'Password dao';
    return null;
  }
}