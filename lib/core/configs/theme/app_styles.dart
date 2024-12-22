import 'package:flutter/material.dart';

class AppStyles{

  static const TextStyle headText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 32,
  );

    static const TextStyle bigTitleText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 32,
  );

    static const TextStyle titelText = TextStyle(
    color: Colors.black,
  );

    static const TextStyle descriptionText = TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.black,
    fontSize: 16,
  );

  static final customButton = OutlinedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}