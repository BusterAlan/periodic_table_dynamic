import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class PieCustomInfo extends StatelessWidget {

  const PieCustomInfo({

    super.key,
    required this.color, 
    required this.label, 
    required this.val,

  });

  final String label;
  final Color color;
  final double val;

  @override
  Widget build(BuildContext context) {

    return AspectRatio(
    
      aspectRatio: 3.5,
      child: Row(
      
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
    
          Column(
    
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
    
              CustomTextLabel(
    
                title: label, 
                body: '${(val * 100).toStringAsExponential(2)}%',
                
              ),
    
            ],
    
          ),
    
          const SizedBox(width: 25),
      
          AspectRatio(
            
            aspectRatio: 1,
            child: PieChart(
              
              PieChartData(
            
                sectionsSpace: 7.5,
                borderData: FlBorderData(
          
                  show: false
          
                ),
                  
                centerSpaceRadius: double.infinity,
                sections: [
            
                  PieChartSectionData(
            
                    value: val,
                    radius: 20,
                    color: color,
                    showTitle: false,
            
                  ),
            
                  PieChartSectionData(
            
                    value: 1 - val,
                    radius: 10,
                    showTitle: false,
                    color: Colors.grey.withOpacity(0.3)
            
                  )
            
                ]
            
              ),
              
            ),
            
          ),
      
        ],
        
      ),

    );

  }

}

