import 'package:flutter/material.dart';

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

