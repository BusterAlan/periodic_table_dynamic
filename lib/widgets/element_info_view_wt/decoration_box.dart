import 'package:flutter/material.dart';

class DecorationColorBox extends StatelessWidget {

  final Color customColor;
  final Size size;

  const DecorationColorBox({

    super.key,
    required this.customColor, 
    required this.size,

  });

  @override
  Widget build(BuildContext context) {

    return Container(
          
      width: double.infinity,
      height: (size.height) / 3,
      decoration: BoxDecoration(
          
        color: customColor.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          
          bottomLeft: Radius.circular(70), 
          bottomRight: Radius.circular(70)
          
        )
          
      ),
          
    );

  }
  
}

