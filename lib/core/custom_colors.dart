import 'package:flutter/material.dart';

class CustomColorClass {
  static final LinearGradient loadingGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 216, 213, 213).withOpacity(0.7),
      Color.fromARGB(255, 235, 235, 235).withOpacity(0.7),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
