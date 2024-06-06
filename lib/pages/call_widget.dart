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

          return ElementSwipeView(
      
            orientation:  widget.orientation,
            alusivePhoto: 'assets/cloud_test.jpg', 

            atomicNumber:           snapshot.data!.atomicNumber, 
            symbol:                 snapshot.data!.symbol, 
            name:                   snapshot.data!.name, 
            latinName:              snapshot.data!.latinName,
            englishName:            snapshot.data!.englishName,
            atomicMass:             snapshot.data!.atomicMass, 
            yearDiscovered:         snapshot.data!.yearDiscovered, 
            boilingPoint:           snapshot.data!.boilingPoint, 
            meltingPoint:           snapshot.data!.meltingPoint, 
            densityValue:           snapshot.data!.densityValue, 
            oxidationNumbers:       snapshot.data!.oxidationStates, 
            electronegativity:      snapshot.data!.electronegativity, 
            costPerOneHundredGrams: snapshot.data!.costPerOneHundredGrams,
            casNumber:              snapshot.data!.casNumber,

            groupColor:         Color.fromRGBO(
              
              snapshot.data!.color.red, 
              snapshot.data!.color.green, 
              snapshot.data!.color.blue, 
              1
              
            ),
            
            elementDescription: snapshot.data!.elementDescription,
            
          );

        } else {

          return const CustomCircularProgress();

        }

      },

    );

  }

}

