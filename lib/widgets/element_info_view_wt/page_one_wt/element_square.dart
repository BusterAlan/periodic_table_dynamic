import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';

class SquareElement extends StatelessWidget {

  final String symbol;
  final String name;
  final int atomicNumber;
  final double atomicMass;

  const SquareElement({ 
    
    super.key, required this.symbol, required this.name, 
    required this.atomicNumber, required this.atomicMass, });

  @override
  Widget build(BuildContext context) {

    return Container(
    
      height: AppConstants.sizeSquare,
      width: AppConstants.sizeSquare,
      decoration: BoxDecoration(
    
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black)
    
      ),
    
      child: Column(
    
        children: [
    
          // Número atómico y masa atómica
    
          Padding(
    
            padding: const EdgeInsets.all(7.5),
            child: Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                Text(
                  
                  atomicNumber.toString(),
                  style: const TextStyle(fontSize: 20),
                  
                ),
            
                Text(
                  
                  atomicMass.toString(),
                  style: const TextStyle(fontSize: 20),
                  
                ),
            
              ],
            
            ),
            
          ),
    
          // Símbolo del elemento
    
          Text(
            
            symbol,
            textAlign: TextAlign.center,
            style: const TextStyle(
                
              fontSize: 100,
              fontWeight: FontWeight.bold,
                
            ),
            
          ),
    
          // Nombre del elemento
    
          Text(
            
            name,
            style: const TextStyle(
          
              color: Colors.white,
              fontSize: 20,
          
            ),
            
          )
    
        ],
    
      ),
    
    );

  }

}

