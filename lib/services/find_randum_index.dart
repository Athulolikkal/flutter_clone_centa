import 'dart:math';

int getRandomNumberExcept(int max, dynamic except) {
  Random random = Random();
  int randomNumber;
  if (except != null) {
    do {
      randomNumber = random.nextInt(max);
    } while (randomNumber == except);

    return randomNumber;
  } else {
    return random.nextInt(max);
  }
}
