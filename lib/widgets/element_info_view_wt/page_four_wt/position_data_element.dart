import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';

class PositionDataElement extends StatelessWidget {

  final String name;
  final dynamic data;
  final Color myColor;

  const PositionDataElement({

    super.key, 
    required this.name, 
    required this.data, 
    required this.myColor,

  });

  @override
  Widget build(BuildContext context) {

    return Column(
    
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        Text(
          
          name, 
          style: AppConstants.underAndBold.copyWith(
    
            fontSize: 28
    
          )
          
        ),
    
        Text(
          
          data.toString(),
          style: TextStyle(
    
            color: myColor,
            fontSize: 32,
            fontWeight: FontWeight.w300
    
          ),
          
        ),
    
      ],
    
    );

  }
  
}

