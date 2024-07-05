import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageFourElement extends StatelessWidget {

  const PageFourElement({ super.key, });

  @override
  Widget build(BuildContext context) {

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;

        List<Widget> namesDiscoveredView = List.generate(
          
          element.discoveredBy.length, 
          (index) => Text(
                        
            element.discoveredBy[index],
            style: const TextStyle(

              fontSize: 18,
              fontWeight: FontWeight.w300
              
            ),

          ),
          
        ); 

        List<Widget> oxidationViewNumberList = List.generate(
          
          element.oxidationStates.length, 
          (index) => Text(
                        
            element.oxidationStates[index].toString(),
            style: const TextStyle(

              fontSize: 32,
              fontWeight: FontWeight.w300
              
            ),

          ),
          
        );

        List<Widget> valenceViewNumberList = List.generate(
          
          element.valenceStates.length, 
          (index) => Text(
                        
            element.valenceStates[index].toString(),
            style: const TextStyle(

              fontSize: 32,
              fontWeight: FontWeight.w300
              
            ),

          ),
          
        );
        
        return Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            FittedBox(

              fit: BoxFit.scaleDown,
              child: Padding(

                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    ColumnData(
                      
                      titleInfo: 'Números de oxidación',
                      oxidationViewNumberList: oxidationViewNumberList
                      
                    ),
                
                    const SizedBox(width: 20),
                
                    ColumnData(
                      
                      titleInfo: 'Electrones de Valencia',
                      oxidationViewNumberList: valenceViewNumberList
                      
                    ),
                
                  ],
                
                ),

              ),

            ),

            if (element.discoveredBy.isNotEmpty)

            CustomContainer(
              
              innerColor: Colors.black38, 
              content: FittedBox(

                fit: BoxFit.contain,
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                
                    const Padding(
                
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        
                        Icons.person_pin_rounded,
                        color: Colors.white,
                        size: 40,
                        
                      ),
                
                    ),
                
                    Column(
                    
                      children: [
                    
                        Padding(
                    
                          padding: const EdgeInsets.only(bottom: 15),
                          child: Text(
                            
                            'Elemento descubierto por:',
                            style: AppConstants.underAndBold,
                            
                          ),
                    
                        ),
                    
                        Column(
                    
                          children: namesDiscoveredView,
                    
                        )
                    
                      ],
                    
                    ),
                
                  ],
                
                ),

              )
              
            ),

            Row(

              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                PositionDataElement(

                  name: 'Grupo',
                  data: element.groupElement,
                  myColor: Colors.green,

                ),

                PositionDataElement(

                  name: 'Periodo',
                  data: element.period,
                  myColor: Colors.red,

                ),

              ],

            )

          ],

        );

      },
      
    );

  }

}

