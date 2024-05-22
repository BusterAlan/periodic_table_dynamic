import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/notation/unicode_map.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PageThreeElement extends StatelessWidget {

  final Color groupColor;
  final String alusivePhoto;
  final int yearDiscovered;
  final List<int> oxidationNumbers;
  final double boilingPoint, meltingPoint,
  densityValue, electronegativity;

  const PageThreeElement({ super.key, required this.groupColor, 
  required this.alusivePhoto,
  required this.yearDiscovered, required this.boilingPoint, 
  required this.meltingPoint, required this.densityValue, 
  required this.oxidationNumbers, 
  required this.electronegativity });

  @override
  Widget build(BuildContext context) {

    TextStyle textBoldSample = const TextStyle(
            
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white
      
    );

    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

        const Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              
              '¿Qué significa los colores?',
              style: TextStyle(
                
                fontWeight: FontWeight.bold
                
              ),
              
            ),

            SizedBox(width: 5),

            Icon(
              
              Icons.arrow_forward,
              color: Colors.white,
              
            ),

            SizedBox(width: 5),

            ColorHelper(),

          ],

        ),

      ],

    );

  }

}

