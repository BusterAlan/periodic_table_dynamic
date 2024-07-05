import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageTwoElement extends StatelessWidget {

  const PageTwoElement({ super.key, });

  @override
  Widget build(BuildContext context) {

    // Page Two

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;

        return Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [ 

            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text(
                    
                      element.englishName, 
                      style: const TextStyle(
                        
                        fontSize: 20, 
                        fontWeight: FontWeight.bold
                        
                      ),
                      
                    ),

                    const SizedBox(width: 10),

                    Text(
                      
                      element.latinName, 
                      style: TextStyle(
                        
                        fontSize: 20, 
                        fontStyle: FontStyle.italic,
                        color: Theme.of(context).indicatorColor.withOpacity(0.66),
                        
                      ),
                      
                    ),

                  ],

                ),

                Text(
                  
                  'CAS${element.casNumber}', 
                  style: TextStyle(

                    fontSize: 30,
                    color: Theme.of(context).indicatorColor.withOpacity(0.25),
                    fontWeight: FontWeight.w900

                  ),
                  
                ),

              ],

            ),
            
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CustomContainer(
                
                innerColor: Colors.black54,
                content: Text(
            
                  element.elementDescription,
                  textAlign: TextAlign.justify,
                  
                ),
                
              ),

            ),

          ]
          
        );
        
      },
      
    );

  }

}

