import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/notation/unicode_map.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PageThreeElement extends StatelessWidget {

  final int yearDiscovered;
  final List<int> oxidationNumbers;
  final double boilingPoint, meltingPoint,
  densityValue, electronegativity, costPerOneHundredGrams;
  final Color? colorIcon;

  const PageThreeElement({ 
    
    super.key,
    required this.yearDiscovered, required this.boilingPoint, 
    required this.meltingPoint, required this.densityValue, 
    required this.oxidationNumbers, 
    required this.electronegativity, 
    required this.costPerOneHundredGrams, 
    this.colorIcon 
  
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> colorHelperList = List.generate(
      
      AppConstants.myMeaningList.length, 
      (index) => ColorLabelHelp(
                    
        colorIcon: AppConstants.myColorList[index],
        meaning: AppConstants.myMeaningList[index],
                    
      ),
      
    ); 

    List<Widget> oxidationViewNumberList = List.generate(
      
      oxidationNumbers.length, 
      (index) => Text(
                    
        oxidationNumbers[index].toString(),
        style: AppConstants.underAndBold.copyWith(

          fontSize: 30

        ),

      ),
      
    ); 

    return Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        LabelPoint(
          
          meltingPoint: meltingPoint, 
          colorLabel: const Color.fromARGB(255, 0, 63, 84),
          
        ),
        
        LabelPoint(
                        
          boilingPoint: boilingPoint, 
          colorLabel: const Color.fromARGB(255, 81, 5, 0),
          
        ),
      
        CustomTextLabel(
          
          title: 'Densidad',
          body: densityValue.toString(),
          unit: 'g/cm${UnicodeMap.unicodeMap["3"]!.superscript}',
          
        ),

        CustomTextLabel(
          
          title: 'Electronegatividad', 
          body: electronegativity.toString()
          
        ),

        CustomTextLabel(
          
          title: 'Elemento descubierto en el año',
          body: yearDiscovered.toString()
          
        ),

        CustomTextLabel(
          
          title: 'Costo por cien gramos', 
          body: costPerOneHundredGrams.toString(),
          unit: 'USD',
          iconLabel: Icons.attach_money_outlined,
          color: Colors.greenAccent,
          
        ),

        MyHelperButton(

          title: 'Números de oxidación',
          myContent: oxidationViewNumberList, 

        ),

        Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              
              '¿Qué significa los colores?',
              style: TextStyle(
                
                fontWeight: FontWeight.bold
                
              ),
              
            ),

            const SizedBox(width: 5),

            const Icon(
              
              Icons.arrow_forward,
              color: Colors.white,
              size: 15,
              
            ),

            const SizedBox(width: 5),

            MyHelperButton(
              
              title: 'Leyenda de colores', 
              myContent: colorHelperList, 
              
            ),

          ],

        ),

      ],

    );

  }

}

