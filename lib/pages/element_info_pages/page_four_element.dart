import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PageFourElement extends StatelessWidget {

  final List<int> oxidationNumbers, valenceStates;
  final List<String> discoveredBy;
  final int period;
  final String groupElement;

  const PageFourElement({
    
    super.key, 
    required this.oxidationNumbers, 
    required this.discoveredBy, 
    required this.valenceStates, 
    required this.period, 
    required this.groupElement
    
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> namesDiscoveredView = List.generate(
      
      discoveredBy.length, 
      (index) => Text(
                    
        discoveredBy[index],
        style: const TextStyle(

          fontSize: 18,
          fontWeight: FontWeight.w300
          
        ),

      ),
      
    ); 

    List<Widget> oxidationViewNumberList = List.generate(
      
      oxidationNumbers.length, 
      (index) => Text(
                    
        oxidationNumbers[index].toString(),
        style: const TextStyle(

          fontSize: 32,
          fontWeight: FontWeight.w300
          
        ),

      ),
      
    );

    List<Widget> valenceViewNumberList = List.generate(
      
      valenceStates.length, 
      (index) => Text(
                    
        valenceStates[index].toString(),
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

        if (discoveredBy.isNotEmpty)

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
              data: groupElement,
              myColor: Colors.green,

            ),

            PositionDataElement(

              name: 'Periodo',
              data: period,
              myColor: Colors.red,

            ),

          ],

        )

      ],

    );

  }

}

