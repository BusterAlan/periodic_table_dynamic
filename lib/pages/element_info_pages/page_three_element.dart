import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/notation/unicode_map.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PageThreeElement extends StatelessWidget {

  final int yearDiscovered;
  final double boilingPoint, meltingPoint,
  densityValue, electronegativity, costPerOneHundredGrams,
  ionizationEnergy;
  final Color? colorIcon;

  const PageThreeElement({ 
    
    super.key,
    required this.yearDiscovered, 
    required this.boilingPoint, 
    required this.meltingPoint, 
    required this.densityValue, 
    required this.electronegativity, 
    required this.costPerOneHundredGrams, 
    this.colorIcon, 
    required this.ionizationEnergy 
  
  });

  String yearIssue(int year) {

    String suffix = 'a.C.';

    if (
      
      year == 3750 || year == 500 ||
      year == 2000 || year == 8000
      
    ) {

      return '$year $suffix';

    } else {

      return year.toString();

    }

  }

  @override
  Widget build(BuildContext context) {

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
          body: densityValue.toStringAsExponential(),
          unit: 'g/cm${UnicodeMap.unicodeMap["3"]!.superscript}',
          
        ),

        CustomTextLabel(
          
          title: 'Potencial de ionización de un átomo', 
          body: ionizationEnergy.toString()
          
        ),

        CustomTextLabel(
          
          title: 'Electronegatividad', 
          body: electronegativity.toString()
          
        ),

        CustomTextLabel(
          
          title: 'Elemento descubierto en el año',
          body: yearIssue(yearDiscovered)
          
        ),

        CustomTextLabel(
          
          title: 'Costo por cien gramos', 
          body: costPerOneHundredGrams.toString(),
          unit: 'USD',
          iconLabel: Icons.attach_money_outlined,
          color: Colors.greenAccent,
          
        ),

      ],

    );

  }

}

