import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/pages/element_info_pages/element_info_pages.dart';
import 'package:periodic_table_dynamic/pages/page_model.dart';

class ElementSwipeView extends StatelessWidget {

  final Color groupColor;
  final String alusivePhoto, elementData, symbol, name;
  final int atomicNumber, yearDiscovered;
  final List<int> oxidationNumbers;
  final double atomicMass, boilingPoint, meltingPoint,
  densityValue, electronegativity;

  const ElementSwipeView({ super.key, required this.groupColor, 
  required this.alusivePhoto, required this.elementData, 
  required this.symbol, required this.name, 
  required this.atomicNumber, required this.atomicMass, 
  required this.yearDiscovered, required this.boilingPoint, 
  required this.meltingPoint, required this.densityValue, 
  required this.oxidationNumbers, 
  required this.electronegativity });

  @override
  Widget build(BuildContext context) {

    return PageModel(
      
      groupColor: groupColor, 
      alusivePhoto: alusivePhoto, 
      customContent: [ 
        
        PageOneElement(
          
          groupColor: groupColor, 
          alusivePhoto: alusivePhoto, 
          elementData: elementData, 
          symbol: symbol, 
          name: name, 
          atomicNumber: atomicNumber, 
          atomicMass: atomicMass,
          
        ),

        PageTwoElement(
          
          groupColor: groupColor, 
          alusivePhoto: alusivePhoto, 
          elementData: elementData,
          
        ),

        PageThreeElement(
          
          groupColor: groupColor, 
          alusivePhoto: alusivePhoto, 
          yearDiscovered: yearDiscovered, 
          boilingPoint: boilingPoint, 
          densityValue: densityValue, 
          meltingPoint: meltingPoint, 
          oxidationNumbers: oxidationNumbers, 
          electronegativity: electronegativity,
          
        ),

      ]
      
    );

  }

}

