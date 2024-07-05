import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/notation/unicode_map.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageThreeElement extends StatelessWidget {

  const PageThreeElement({ super.key, });

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

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;
        
        return Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            LabelPoint(
              
              meltingPoint: element.meltingPoint, 
              colorLabel: const Color.fromARGB(255, 0, 63, 84),
              
            ),
            
            LabelPoint(
                            
              boilingPoint: element.boilingPoint, 
              colorLabel: const Color.fromARGB(255, 81, 5, 0),
              
            ),
          
            CustomTextLabel(
              
              title: 'Densidad',
              body: element.densityValue.toStringAsExponential(),
              unit: 'g/cm${UnicodeMap.unicodeMap["3"]!.superscript}',
              
            ),

            CustomTextLabel(
              
              title: 'Potencial de ionización de un átomo', 
              body: element.ionizationEnergy.toString()
              
            ),

            CustomTextLabel(
              
              title: 'Electronegatividad', 
              body: element.electronegativity.toString()
              
            ),

            CustomTextLabel(
              
              title: 'Afinidad Electrónica', 
              body: element.electronicAfinity.toString()
              
            ),

            CustomTextLabel(
              
              title: 'Elemento descubierto en el año',
              body: yearIssue(element.yearDiscovered)
              
            ),

            CustomTextLabel(
              
              title: 'Costo por cien gramos', 
              body: element.costPerOneHundredGrams.toString(),
              unit: 'USD',
              iconLabel: Icons.attach_money_outlined,
              color: Colors.greenAccent,
              
            ),

            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomContainer(
                
                innerColor: Colors.black26, 
                content: (element.phase != 'Desconocido') ? Column(

                  children: [

                    const Text('El elemento naturalmente se encuentra en estado'),

                    Text(
                      
                      element.phase, 
                      style: AppConstants.underAndBold.copyWith(

                        fontSize: 28

                      ),
                      
                    )

                  ],

                ) 
                
                : Text(
                  
                  'No se sabe con certeza en que estado se encuentra el elemento (o es producido artificialmente)',
                  style: AppConstants.underAndBold,
                  
                ),
                
              ),

            ),

          ],

        );

      },
      
    );

  }

}

