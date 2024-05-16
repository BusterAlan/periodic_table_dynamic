import 'package:flutter/material.dart';

class CustomTextLabel extends StatelessWidget {

  final String title, body; 

  const CustomTextLabel({

    super.key,
    required this.title, 
    required this.body,

  });

  @override
  Widget build(BuildContext context) {

    return Row(
    
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        Text('$title: '),
    
        Text(
          
          body, 
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

