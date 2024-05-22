import 'package:flutter/material.dart';

class CustomTextLabel extends StatelessWidget {

  final String title, body;
  final String? unit; 

  const CustomTextLabel({

    super.key,
    required this.title, 
    required this.body, 
    this.unit, 

  });

  @override
  Widget build(BuildContext context) {

    return Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('$title: '),

        Text(
          
          '$body ${unit ?? ''}', 
          style: const TextStyle(
            
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white
            
          ),
          
        )
    
      ],
    
    );

  }

}

