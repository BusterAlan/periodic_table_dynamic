import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/page_three_wt/my_text_label.dart';
import 'package:provider/provider.dart';

class PageFiveElement extends StatelessWidget {

  const PageFiveElement({ super.key, });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;
        
        return Stack(

          children: [

            Center(

              child: Image.asset(
                      
                'assets/atom.png',
                opacity: const AlwaysStoppedAnimation(.1),
                      
              ),

            ),

            Column(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            
                Container(
            
                  decoration: AppConstants.myBoxDeco(context),
                  width: size.width * 0.8,
                  child: const Center(
                    
                    child: Text(
                      
                      'Radios', 
                      style: TextStyle(
                        
                        fontWeight: FontWeight.w300,
                        fontSize: 32
                        
                      ),
                      
                    )
                    
                  ),
            
                ),
            
                const SizedBox(height: 15),
            
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
            
                    CustomTextLabel(
                    
                      title: 'Atómico', 
                      body: element.atomicRadius.toString(),
                      
                    ),
            
                    CustomTextLabel(
                        
                      title: 'Covalente', 
                      body: element.covalentRadius.toString(),
                      
                    ),
            
                  ],
            
                ),
            
              ],
            
            ),

          ],

        );

      },
      
    );

  }

}

