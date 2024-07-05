import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageSevenElement extends StatelessWidget {

  const PageSevenElement({ super.key, });

  @override
  Widget build(BuildContext context) {

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        Proportions prop = apiService.data!.proportions;

        Color dbColor = Color.fromRGBO(
          
          apiService.data!.color.red,
          apiService.data!.color.green,
          apiService.data!.color.blue,
          1
          
        );

        return Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            PieCustomInfo(
              
              color: dbColor,
              label: 'En el cuerpo humano',
              val: prop.humanBody,
              
            ),

            PieCustomInfo(
              
              color: dbColor,
              label: 'En la corteza terrestre',
              val: prop.earthCrust,
              
            ),

            PieCustomInfo(
              
              color: dbColor,
              label: 'En meteoritos',
              val: prop.meteorites,
              
            )

          ],
          
        );
        
      },
      
    );

  }

}

