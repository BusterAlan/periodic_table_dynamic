import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class LabelPoint extends StatelessWidget {

  const LabelPoint({ 
    
    super.key, 
    this.boilingPoint, 
    this.meltingPoint, 
    required this.textBoldSample, 
    required this.colorLabel, 
    
  });

  final double? boilingPoint, meltingPoint;
  final TextStyle textBoldSample;
  final Color colorLabel;

  @override
  Widget build(BuildContext context) {

    bool cond = boilingPoint != null;

    return Container(
    
      decoration: BoxDecoration(
    
        color: colorLabel
    
      ),
    
      padding: const EdgeInsets.all(10),
      child: CustomTextLabel(

        title: cond ? 'Punto de ebullición' : 'Punto de fusión',
        body: cond ? boilingPoint.toString() : meltingPoint.toString(),
        unit: '°C',
        
      )
    
    );

  }

}

