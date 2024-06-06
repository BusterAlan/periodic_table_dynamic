import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';

class LabelPoint extends StatelessWidget {

  const LabelPoint({ 
    
    super.key, 
    this.boilingPoint, 
    this.meltingPoint,  
    required this.colorLabel, 
    
  });

  final double? boilingPoint, meltingPoint;
  final Color colorLabel;

  @override
  Widget build(BuildContext context) {

    bool cond = boilingPoint != null;

    List<String> labelUnitsTemp = [ 
      
      "°C", 
      "°F",
      "°K", 
      
    ];

    // °C, °F, °K

    List<String> temperatureList = !cond ? [

      // Punto de fusión

      meltingPoint.toString(),
      AppConstants.celsiusToFahrenheit(meltingPoint!),
      AppConstants.celsiusToKelvin(meltingPoint!)

    ] : [

      // Punto de ebullición

      boilingPoint.toString(),
      AppConstants.celsiusToFahrenheit(boilingPoint!),
      AppConstants.celsiusToKelvin(boilingPoint!)

    ];

    List<Widget> myTemperatureValues = List.generate(
      
      3,
      (index) => Row(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            
            labelUnitsTemp[index],
            style: const TextStyle(
              
              fontSize: 20,
              fontWeight: FontWeight.w200
              
            ),
            
          ),

          const SizedBox(width: 15),

          Text(
            
            temperatureList[index],
            style: AppConstants.underAndBold
            
          ),

        ],
        
      ),
      
    );

    return Container(
    
      width: double.infinity,
      decoration: BoxDecoration(
    
        color: colorLabel
    
      ),
    
      padding: const EdgeInsets.all(10),

      child: Column(
      
        children: [
      
          Padding(

            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              
              cond ? 'Punto de ebullición' : 'Punto de fusión',
              style: const TextStyle(
            
                fontStyle: FontStyle.italic
            
              ),
              
            ),

          ),

          Container(
          
            width: 200,
            decoration: BoxDecoration(
          
              border: Border.all(
                
                color: Theme.of(context).indicatorColor
                
              )
          
            ),
          
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: myTemperatureValues,

            ),
          
          ),
      
        ],
      
      ),
    
    );

  }

}

