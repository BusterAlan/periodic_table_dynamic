import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/pages/element_info_pages/element_info_pages.dart';
import 'package:periodic_table_dynamic/pages/page_model.dart';

class ElementSwipeView extends StatefulWidget {

  final Color groupColor;
  final String alusivePhoto, elementDescription, symbol, name, 
  englishName, latinName, casNumber, groupElement;
  final List<String> discoveredBy;
  final int atomicNumber, yearDiscovered, period;
  final List<int> oxidationNumbers, valenceStates;
  final double atomicMass, boilingPoint, meltingPoint, 
  costPerOneHundredGrams, ionizationEnergy,
  densityValue, electronegativity;
  final Future<void>? orientation;
  final Electroniclayers electronicLayers;

  const ElementSwipeView({ 
    
    super.key, 
    required this.symbol, 
    required this.name, 
    required this.atomicNumber,
    required this.atomicMass, 
    required this.yearDiscovered, 
    required this.boilingPoint, 
    required this.meltingPoint,
    required this.densityValue, 
    required this.oxidationNumbers, 
    required this.electronegativity,
    required this.groupColor, 
    required this.alusivePhoto, 
    required this.elementDescription, 
    required this.englishName, 
    required this.latinName, 
    required this.costPerOneHundredGrams, 
    required this.casNumber, 
    required this.discoveredBy, 
    this.orientation, 
    required this.valenceStates, 
    required this.groupElement, 
    required this.period, 
    required this.ionizationEnergy, 
    required this.electronicLayers, 
    
  });

  @override
  State<ElementSwipeView> createState() => _ElementSwipeViewState();

}

class _ElementSwipeViewState extends State<ElementSwipeView> {

  @override
  void initState() {

    if (widget.orientation != null) {

      widget.orientation;

    }

    super.initState();

  }

  @override
  void dispose() {

    SystemChrome.setPreferredOrientations([

      DeviceOrientation.landscapeLeft

    ]);

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {

    return PageModel(
      
      groupColor: widget.groupColor, 
      englishName: widget.englishName,
      latinName: widget.latinName,
      customContent: [ 
        
        PageOneElement(
          
          alusivePhoto: widget.alusivePhoto, 
          elementData: widget.elementDescription, 
          symbol: widget.symbol, 
          name: widget.name, 
          atomicNumber: widget.atomicNumber, 
          atomicMass: widget.atomicMass,
          electroniclayers: widget.electronicLayers,
          
        ),

        PageTwoElement(
          
          latinName: widget.latinName,
          englishName: widget.englishName,
          casNumber: widget.casNumber,
          elementData: widget.elementDescription,
          
        ),

        PageThreeElement(
          
          yearDiscovered: widget.yearDiscovered, 
          boilingPoint: widget.boilingPoint, 
          densityValue: widget.densityValue, 
          meltingPoint: widget.meltingPoint,  
          electronegativity: widget.electronegativity,
          costPerOneHundredGrams: widget.costPerOneHundredGrams, 
          ionizationEnergy: widget.ionizationEnergy,
          
        ),

        PageFourElement(

          oxidationNumbers: widget.oxidationNumbers, 
          discoveredBy: widget.discoveredBy,
          valenceStates: widget.valenceStates, 
          period: widget.period, 
          groupElement: widget.groupElement,
          

        ),

        const PageFiveElement()

      ]
      
    );

  }

}

