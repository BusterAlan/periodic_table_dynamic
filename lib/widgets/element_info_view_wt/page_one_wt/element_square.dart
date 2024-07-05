import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:provider/provider.dart';

class SquareElement extends StatelessWidget {

  const SquareElement({ super.key, });

  @override
  Widget build(BuildContext context) {

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;

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
                      
                      element.atomicNumber.toString(),
                      style: const TextStyle(fontSize: 20),
                      
                    ),
                
                    Text(
                      
                      element.atomicMass.toString(),
                      style: const TextStyle(fontSize: 20),
                      
                    ),
                
                  ],
                
                ),
                
              ),
        
              // Símbolo del elemento
        
              Text(
                
                element.symbol,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                    
                ),
                
              ),
        
              // Nombre del elemento
        
              Text(
                
                element.name,
                style: const TextStyle(
              
                  color: Colors.white,
                  fontSize: 20,
              
                ),
                
              )
        
            ],
        
          ),
        
        );

      },
      
    );

  }

}

