import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:periodic_table_dynamic/constants.dart';

import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/pages/element_swipe_view.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';

class CallWidgetFunction extends StatefulWidget {

  final int primaryKey;
  final Future<void>? orientation;

  const CallWidgetFunction({super.key, required this.primaryKey, this.orientation});

  @override
  State<CallWidgetFunction> createState() => _CallWidgetFunctionState();

}

class _CallWidgetFunctionState extends State<CallWidgetFunction> {

  late Future<PeriodicTableElement> elementData;
        
  Future<PeriodicTableElement> recieveData(int num) async {

    final response = await http.get(Uri.parse('${AppConstants.uriBase}/api/getElementInfo/$num'));

    if (response.statusCode == 200) {

      return PeriodicTableElement.fromJson(jsonDecode(response.body));

    } else {

      throw Exception('Failed to load data');

    }

  }

  @override
  void initState() {

    elementData = recieveData(widget.primaryKey);
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    
    return FutureBuilder<PeriodicTableElement> (

      future: elementData,
      builder: (BuildContext context, AsyncSnapshot<PeriodicTableElement> snapshot) {

        if (snapshot.hasData) {

          PeriodicTableElement e = snapshot.data!;

          return ElementSwipeView(
      
            orientation:  widget.orientation,
            alusivePhoto: 'assets/cloud_test.jpg', 

            atomicNumber:           e.atomicNumber, 
            symbol:                 e.symbol, 
            name:                   e.name, 
            latinName:              e.latinName,
            englishName:            e.englishName,
            atomicMass:             e.atomicMass, 
            yearDiscovered:         e.yearDiscovered, 
            boilingPoint:           e.boilingPoint, 
            meltingPoint:           e.meltingPoint, 
            densityValue:           e.densityValue, 
            oxidationNumbers:       e.oxidationStates, 
            electronegativity:      e.electronegativity, 
            costPerOneHundredGrams: e.costPerOneHundredGrams,
            casNumber:              e.casNumber,

            groupColor: Color.fromRGBO(
              
              e.color.red, 
              e.color.green, 
              e.color.blue, 
              1
              
            ),
            
            elementDescription: e.elementDescription,
            discoveredBy: e.discoveredBy,
            valenceStates: e.valenceStates,
            period: e.period,
            groupElement: e.groupElement, 
            ionizationEnergy: e.ionizationEnergy,
            electronicLayers: e.electroniclayers,
            
          );

        } else {

          return const CustomCircularProgress();

        }

      },

    );

  }

}

