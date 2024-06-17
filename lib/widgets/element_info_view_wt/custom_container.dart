import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  final Color innerColor;
  final Widget content;
  final Color? myColorBorder;

  const CustomContainer({

    super.key,
    required this.innerColor,
    required this.content, 
    this.myColorBorder, 

  });

  @override
  Widget build(BuildContext context) {

    return Container(
    
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
    
        color: innerColor,
        borderRadius: BorderRadius.circular(25),
        border: myColorBorder != null ? Border.all(
          
          color: myColorBorder!
          
        ) : null
    
      ),
    
      child: content
    
    );

  }

}

