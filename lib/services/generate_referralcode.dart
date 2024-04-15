import 'dart:math';

String generateReferralCode() {
  const lowercaseLetters = 'abcdefghijklmnopqrstuvwxyz';
  const uppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const numbers = '0123456789';
  const alphaNumeric = '$lowercaseLetters$uppercaseLetters$numbers';

  Random random = Random();
  String code = '';

  for (int i = 0; i < 8; i++) {
    code += alphaNumeric[random.nextInt(alphaNumeric.length)];
  }

  return code;
}
