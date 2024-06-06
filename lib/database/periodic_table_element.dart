// Main info

import 'dart:convert';

PeriodicTableElement periodicTableElementFromJson(String str) => PeriodicTableElement.fromJson(json.decode(str));

String periodicTableElementToJson(PeriodicTableElement data) => json.encode(data.toJson());

class PeriodicTableElement {

    String elementDescription;
    String casNumber;
    String symbol;
    String name;
    String englishName;
    String latinName;
    int atomicNumber;
    double atomicMass;
    int yearDiscovered;
    double boilingPoint;
    double meltingPoint;
    double densityValue;
    double costPerOneHundredGrams;
    double electronegativity;
    MyColor color;
    List<int> oxidationStates;

    PeriodicTableElement({

      required this.elementDescription,
      required this.symbol,
      required this.name,
      required this.englishName,
      required this.latinName,
      required this.atomicNumber,
      required this.atomicMass,
      required this.yearDiscovered,
      required this.boilingPoint,
      required this.meltingPoint,
      required this.densityValue,
      required this.electronegativity,
      required this.color,
      required this.oxidationStates,
      required this.costPerOneHundredGrams,
      required this.casNumber,

    });

    factory PeriodicTableElement.fromJson(Map<String, dynamic> json) => PeriodicTableElement(

      elementDescription: json["elementDescription"],
      symbol: json["symbol"],
      name: json["name"],
      englishName: json["englishName"],
      latinName: json["latinName"],
      atomicNumber: json["atomicNumber"],
      casNumber: json["casNumber"],
      atomicMass: json["atomicMass"]?.toDouble(),
      yearDiscovered: json["yearDiscovered"],
      boilingPoint: json["boilingPoint"]?.toDouble(),
      meltingPoint: json["meltingPoint"]?.toDouble(),
      densityValue: json["densityValue"]?.toDouble(),
      costPerOneHundredGrams: json["costPerOneHundredGrams"]?.toDouble(),
      electronegativity: json["electronegativity"]?.toDouble(),
      color: MyColor.fromJson(json["color"]),
      oxidationStates: List<int>.from(json["oxidationStates"].map((x) => x)),

    );

    Map<String, dynamic> toJson() => {

      "elementDescription": elementDescription,
      "symbol": symbol,
      "name": name,
      "englishName": englishName,
      "latinName": latinName,
      "atomicNumber": atomicNumber,
      "atomicMass": atomicMass,
      "yearDiscovered": yearDiscovered,
      "boilingPoint": boilingPoint,
      "meltingPoint": meltingPoint,
      "densityValue": densityValue,
      "electronegativity": electronegativity,
      "costPerOneHundredGrams": costPerOneHundredGrams,
      "casNumber" : casNumber,
      "color": color.toJson(),
      "oxidationStates": List<dynamic>.from(oxidationStates.map((x) => x)),

    };

}

class MyColor {

  int red;
  int green;
  int blue;

  MyColor({

    required this.red,
    required this.green,
    required this.blue,

  });

  factory MyColor.fromJson(Map<String, dynamic> json) => MyColor(

    red: json["red"],
    green: json["green"],
    blue: json["blue"],

  );

  Map<String, dynamic> toJson() => {

    "red": red,
    "green": green,
    "blue": blue,

  };

}

List<String> symbolInformationFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String symbolInformationToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));

