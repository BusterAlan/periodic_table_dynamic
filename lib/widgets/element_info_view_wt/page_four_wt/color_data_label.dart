import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class ColorHelpFinal extends StatelessWidget {

  const ColorHelpFinal({super.key});

  @override
  Widget build(BuildContext context) {

    List<Widget> colorHelperList = List.generate(
      
      AppConstants.myMeaningList.length, 
      (index) => ColorLabelHelp(
                    
        colorIcon: AppConstants.myColorList[index],
        meaning: AppConstants.myMeaningList[index],
                    
      ),
      
    ); 

    return Row(
    
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
    
    );

  }
  
}

class ColorLabelHelp extends StatelessWidget {

  final Color colorIcon;
  final String meaning;

  const ColorLabelHelp({
    
    super.key, 
    required this.colorIcon, 
    required this.meaning,

  });

  @override
  Widget build(BuildContext context) {

    return Row(
                              
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
                              
        Container(
                              
          width: 25,
          height: 25,
          decoration: BoxDecoration(
                              
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: colorIcon
                              
          ),
                              
        ),
                              
        Padding(

          padding: const EdgeInsets.only(left: 20),
          child: Text(meaning),

        ),
                              
      ],
                              
    );

  }

}

