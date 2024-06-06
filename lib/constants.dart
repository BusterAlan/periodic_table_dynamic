import 'package:flutter/material.dart';

class AppConstants {

  /* static String uriBase = 'http://192.169.100.3:8000'; */ // Mi casa
  static String uriBase = 'http://192.168.1.97:8000'; // Laboratorio QCB
  static TextStyle underAndBold = const TextStyle(
            
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationColor: Colors.white,
    
  );

  static String celsiusToFahrenheit(double c) {

    return (
      
      (1.8 * c) + 32
      
    ).toStringAsFixed(2);

  }

  static String celsiusToKelvin(double c) {

    return (
      
      c + 271.15 // TODO: Or '273'?
      
    ).toStringAsFixed(2);

  }

  static List<Color> myColorList = const [

    Color.fromRGBO(0, 89, 39, 1),
    Color.fromRGBO(146, 167, 15, 1),
    Color.fromRGBO(236, 105, 18, 1),
    Color.fromRGBO(224, 0, 52, 1),
    Color.fromRGBO(96, 14, 102, 1),
    Color.fromRGBO(0, 118, 198, 1),
    Color.fromRGBO(249, 172, 0, 1),
    Color.fromRGBO(0, 32, 62, 1),
    Color.fromRGBO(193, 203, 120, 1),
    Color.fromRGBO(90, 149, 111, 1)

  ];

  static List<String> myMeaningList = [

    "Gases nobles",
    "Halógenos",
    "No metales",
    "Metaloides",
    "Otros metales",
    "Metales de transición",
    "Alcalinotérreos",
    "Metales alcalinos",
    "Lantánidos",
    "Actínidos"

  ];

}

