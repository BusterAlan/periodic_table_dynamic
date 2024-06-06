import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';

class CustomTextLabel extends StatelessWidget {

  final String title, body;
  final String? unit; 
  final IconData? iconLabel;
  final Color? color;

  const CustomTextLabel({

    super.key,
    required this.title, 
    required this.body, 
    this.unit, 
    this.iconLabel, 
    this.color, 

  });

  @override
  Widget build(BuildContext context) {

    return Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        if (iconLabel != null) 
        
        Padding(

          padding: const EdgeInsets.only(right: 5),
          child: Icon(
            
            iconLabel,
            color: color,
            size: 25,
            
          ),

        ),

        Text('$title: '),

        Text(
          
          '$body ${unit ?? ''}', 
          style: AppConstants.underAndBold
          
        )
    
      ],
    
    );

  }

}

