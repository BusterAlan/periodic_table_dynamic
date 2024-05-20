import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/notation/unicode_map.dart';

import 'widgets/element_info_page_wt/widgets.dart';

class ElementPage extends StatelessWidget {

  final Color groupColor;
  final String alusivePhoto, elementData, symbol, name;
  final int atomicNumber, yearDiscovered;
  final List<int> oxidationNumbers;
  final double atomicMass, boilingPoint, meltingPoint,
  densityValue, electronegativity;

  const ElementPage({ super.key, required this.groupColor, 
  required this.alusivePhoto, required this.elementData, 
  required this.symbol, required this.name, 
  required this.atomicNumber, required this.atomicMass, 
  required this.yearDiscovered, required this.boilingPoint, 
  required this.meltingPoint, required this.densityValue, 
  required this.oxidationNumbers, 
  required this.electronegativity });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    TextStyle textBoldSample = const TextStyle(
            
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white
      
    );

    return Scaffold(

      body: Center(
      
        child: Stack(
      
          children: [ 
            
            Container(
      
              width: double.infinity,
              height: (size.height) / 3,
              decoration: BoxDecoration(
      
                color: groupColor.withOpacity(0.2),
                borderRadius: const BorderRadius.only(
                  
                  bottomLeft: Radius.circular(70), 
                  bottomRight: Radius.circular(70)
                  
                )
      
              ),
      
            ),
      
            Stack(
                      
              alignment: Alignment.center,
              children: [
                
                Positioned(
              
                  bottom: 50,
                  child: ClipRRect(
                
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      
                      alusivePhoto,
                      opacity: const AlwaysStoppedAnimation(.20),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                      
                    ),
                
                  )
                
                ),
                      
              ]
                      
            ),
      
            Center(
      
              child: Column(
              
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              
                  SquareElement(
              
                    symbol: symbol,
                    name: name,
                    atomicNumber: atomicNumber,
                    atomicMass: atomicMass
              
                  ),
              
                  Padding(
      
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: Text(
                      
                      elementData,
                      textAlign: TextAlign.justify,
                      
                    ),
      
                  ),
      
                  Column(
      
                    children: [
      
                      LabelPoint(
                        
                        boilingPoint: boilingPoint, 
                        textBoldSample: textBoldSample,
                        colorLabel: const Color.fromARGB(255, 81, 5, 0),
                        
                      ),
      
                      LabelPoint(
                        
                        meltingPoint: meltingPoint, 
                        textBoldSample: textBoldSample,
                        colorLabel: const Color.fromARGB(255, 0, 63, 84),
                        
                      ),
      
                    ],
      
                  ),
      
                  CustomTextLabel(
                    
                    title: 'Densidad',
                    body: densityValue.toString(),
                    unit: 'kg/m${UnicodeMap.unicodeMap["3"]!.superscript}',
                    
                  ),
      
                  CustomTextLabel(
                    
                    title: 'Electronegatividad', 
                    body: electronegativity.toString()
                    
                  ),
      
                  CustomTextLabel(
                    
                    title: 'Elemento descubierto en el año',
                    body: yearDiscovered.toString()
                    
                  ),
      
                  const ColorHelper(),
              
                ],
              
              ),
      
            ),
      
          ]
      
        ),
      
      ),

    );

  }

}

