import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PageOneElement extends StatelessWidget {

  final String alusivePhoto, elementData, symbol, name;
  final int atomicNumber;
  final double atomicMass;

  const PageOneElement({ 
    
    super.key,
    required this.alusivePhoto, 
    required this.elementData, 
    required this.symbol, 
    required this.name, 
    required this.atomicNumber, 
    required this.atomicMass, 
    
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        SquareElement(
              
          symbol: symbol,
          name: name,
          atomicNumber: atomicNumber,
          atomicMass: atomicMass
    
        ),

        ClipRRect(
      
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            
            alusivePhoto,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
            
          ),
      
        ),

      ],
      
    );

  }

}

