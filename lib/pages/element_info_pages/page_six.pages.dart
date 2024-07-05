import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageSixElement extends StatelessWidget {

  const PageSixElement({ super.key, });

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

            CustomContainer(
              
              innerColor: Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5), 
              content: const Text(
                
                'Proporciones',
                style: TextStyle(
                  
                  fontWeight: FontWeight.w300,
                  fontSize: 26
                  
                ),
                
              )
              
            ),

            PieCustomInfo(

              color: dbColor,
              label: 'En el universo',
              val: prop.universe,

            ),

            PieCustomInfo(

              color: dbColor,
              label: 'En el sol',
              val: prop.sun,

            ),

            PieCustomInfo(

              color: dbColor,
              label: 'En el océano',
              val: prop.ocean,

            ),

          ],

        );

      },
      
    );

  }
  
}

