import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/widgets/element_info_page_wt/widgets.dart' show ColorLabelHelp;

class ColorHelper extends StatelessWidget {

  const ColorHelper({ super.key, });

  @override
  Widget build(BuildContext context) {

    List<Color> myColorList = const [

      Color.fromRGBO(0, 89, 39, 1),
      Color.fromRGBO(146, 167, 15, 1),
      Color.fromRGBO(236, 105, 18, 1),
      Color.fromRGBO(224, 0, 52, 1),
      Color.fromRGBO(96, 14, 102, 1),
      Color.fromRGBO(0, 118, 198, 1),
      Color.fromRGBO(249, 172, 0, 1),
      Color.fromRGBO(0, 32, 62, 1),
      Color.fromRGBO(193, 203, 120, 1),
      Color.fromRGBO(90, 149, 111, 1)

    ];

    List<String> myMeaningList = [

      "Gases nobles",
      "Halógenos",
      "No metales",
      "Metaloides",
      "Otros metales",
      "Metales de transición",
      "Alcalinotérreos",
      "Metales alcalinos",
      "Lantánidos",
      "Actínidos"

    ];

    List<Widget> colorHelperList = List.generate(
      
      myMeaningList.length, 
      (index) => ColorLabelHelp(
                    
        colorIcon: myColorList[index],
        meaning: myMeaningList[index],
                    
      ),
      
    ); 

    return TextButton(
                          
      onPressed: () {
          
        showDialog(
          
          context: context,
          builder: (context) {
          
            return AlertDialog(
            
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: const Text(
                
                'Leyenda de colores', 
                style: TextStyle(
          
                  color: Colors.white,
                  fontWeight: FontWeight.bold
          
                )
                
              ),
          
              content: Column(
            
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: colorHelperList,
            
              ),
          
              actions: [
          
                TextButton(
                  
                  onPressed: () {
          
                    Navigator.of(context).pop();
          
                  }, 
          
                  child: const Text('Ok')
                  
                )
          
              ],
            
            );
          
          }
          
        );
          
      }, 
          
      child: const Text('Leyenda de colores')
                          
    );

  }

}

