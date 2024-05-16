import 'package:flutter/material.dart';

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
    
      height: 120,
      width: 120,
      decoration: BoxDecoration(
    
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black)
    
      ),
    
      child: Column(
    
        children: [
    
          // Número atómico y masa atómica
    
          Padding(
    
            padding: const EdgeInsets.all(3),
            child: Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            
                Text(
                  
                  atomicNumber.toString(),
                  
                ),
            
                Text(
                  
                  atomicMass.toString(),
                  
                ),
            
              ],
            
            ),
            
          ),
    
          // Símbolo del elemento
    
          Text(
            
            symbol,
            textAlign: TextAlign.center,
            style: const TextStyle(
                
              fontSize: 50,
              fontWeight: FontWeight.bold,
                
            ),
            
          ),
    
          // Nombre del elemento
    
          Text(
            
            name,
            style: const TextStyle(
          
              color: Colors.white
          
            ),
            
          )
    
        ],
    
      ),
    
    );

  }

}

