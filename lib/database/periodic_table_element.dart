// Main info

import 'dart:convert';

PeriodicTableElement periodicTableElementFromJson(String str) => PeriodicTableElement.fromJson(json.decode(str));

String periodicTableElementToJson(PeriodicTableElement data) => json.encode(data.toJson());

class PeriodicTableElement {

  int atomicNumber;
  String symbol;
  String name;
  String latinName;
  String englishName;
  double atomicMass;
  int yearDiscovered;
  double boilingPoint;
  double meltingPoint;
  double densityValue;
  double electronegativity;
  double costPerOneHundredGrams;
  String casNumber;
  String elementDescription;
  int period;
  String groupElement;
  double ionizationEnergy;
  int atomicRadius;
  int covalentRadius;
  double electronicAfinity;
  String phase;
  MyColor color;
  Electroniclayers electroniclayers;
  List<int> oxidationStates;
  List<int> valenceStates;
  List<String> discoveredBy;
  Proportions proportions;

  PeriodicTableElement({

    required this.atomicNumber,
    required this.symbol,
    required this.name,
    required this.latinName,
    required this.englishName,
    required this.atomicMass,
    required this.yearDiscovered,
    required this.boilingPoint,
    required this.meltingPoint,
    required this.densityValue,
    required this.electronegativity,
    required this.costPerOneHundredGrams,
    required this.casNumber,
    required this.elementDescription,
    required this.period,
    required this.groupElement,
    required this.ionizationEnergy,
    required this.atomicRadius,
    required this.covalentRadius,
    required this.electronicAfinity,
    required this.phase,
    required this.proportions,
    required this.color,
    required this.electroniclayers,
    required this.oxidationStates,
    required this.valenceStates,
    required this.discoveredBy,

  });

  factory PeriodicTableElement.fromJson(Map<String, dynamic> json) => PeriodicTableElement(

    atomicNumber: json["atomicNumber"],
    symbol: json["symbol"],
    name: json["name"],
    latinName: json["latinName"],
    englishName: json["englishName"],
    atomicMass: json["atomicMass"]?.toDouble(),
    yearDiscovered: json["yearDiscovered"],
    boilingPoint: json["boilingPoint"]?.toDouble(),
    meltingPoint: json["meltingPoint"]?.toDouble(),
    densityValue: json["densityValue"]?.toDouble(),
    electronegativity: json["electronegativity"]?.toDouble(),
    costPerOneHundredGrams: json["costPerOneHundredGrams"]?.toDouble(),
    casNumber: json["casNumber"],
    elementDescription: json["elementDescription"],
    period: json["period"],
    groupElement: json["groupElement"],
    ionizationEnergy: json["ionizationEnergy"]?.toDouble(),
    atomicRadius: json["atomicRadius"],
    covalentRadius: json["covalentRadius"],
    electronicAfinity: json["electronicAfinity"]?.toDouble(),
    phase: json["phase"],
    color: MyColor.fromJson(json["color"]),
    electroniclayers: Electroniclayers.fromJson(json["electroniclayers"]),
    proportions: Proportions.fromJson(json["proportions"]),
    oxidationStates: List<int>.from(json["oxidationStates"].map((x) => x)),
    valenceStates: List<int>.from(json["valenceStates"].map((x) => x)),
    discoveredBy: List<String>.from(json["discoveredBy"].map((x) => x)),

  );

  Map<String, dynamic> toJson() => {

    "atomicNumber": atomicNumber,
    "symbol": symbol,
    "name": name,
    "latinName": latinName,
    "englishName": englishName,
    "atomicMass": atomicMass,
    "yearDiscovered": yearDiscovered,
    "boilingPoint": boilingPoint,
    "meltingPoint": meltingPoint,
    "densityValue": densityValue,
    "electronegativity": electronegativity,
    "costPerOneHundredGrams": costPerOneHundredGrams,
    "casNumber": casNumber,
    "elementDescription": elementDescription,
    "period": period,
    "groupElement": groupElement,
    "ionizationEnergy": ionizationEnergy,
    "atomicRadius": atomicRadius,
    "covalentRadius": covalentRadius,
    "electronicAfinity": electronicAfinity,
    "phase" : phase,
    "color": color.toJson(),
    "electroniclayers": electroniclayers.toJson(),
    "oxidationStates": List<dynamic>.from(oxidationStates.map((x) => x)),
    "valenceStates": List<dynamic>.from(valenceStates.map((x) => x)),
    "discoveredBy": List<dynamic>.from(discoveredBy.map((x) => x)),

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

class Electroniclayers {

  int k;
  int l;
  int m;
  int n;
  int o;
  int p;
  int q;
  int r;

  Electroniclayers({

    required this.k,
    required this.l,
    required this.m,
    required this.n,
    required this.o,
    required this.p,
    required this.q,
    required this.r,

  });

  factory Electroniclayers.fromJson(Map<String, dynamic> json) => Electroniclayers(

    k: json["K"],
    l: json["L"],
    m: json["M"],
    n: json["N"],
    o: json["O"],
    p: json["P"],
    q: json["Q"],
    r: json["R"],

  );

  Map<String, dynamic> toJson() => {

    "K": k,
    "L": l,
    "M": m,
    "N": n,
    "O": o,
    "P": p,
    "Q": q,
    "R": r,

  };

}

class Proportions {

  double universe;
  double sun;
  double ocean;
  double humanBody;
  double earthCrust;
  double meteorites;

  Proportions({

    required this.universe,
    required this.sun,
    required this.ocean,
    required this.humanBody,
    required this.earthCrust,
    required this.meteorites,

  });

  factory Proportions.fromJson(Map<String, dynamic> json) => Proportions(

    universe: json["universe"]?.toDouble(),
    sun: json["sun"]?.toDouble(),
    ocean: json["ocean"]?.toDouble(),
    humanBody: json["humanBody"]?.toDouble(),
    earthCrust: json["earthCrust"]?.toDouble(),
    meteorites: json["meteorites"]?.toDouble(),

  );

  Map<String, dynamic> toJson() => {

    "universe": universe,
    "sun": sun,
    "ocean": ocean,
    "humanBody": humanBody,
    "earthCrust": earthCrust,
    "meteorites": meteorites,

  };

}

List<String> symbolInformationFromJson(String str) => List<String>.from(json.decode(str).map((x) => x));

String symbolInformationToJson(List<String> data) => json.encode(List<dynamic>.from(data.map((x) => x)));

