import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:periodic_table_dynamic/constants.dart';

import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/pages/call_widget.dart';

import '../widgets/element_info_view_wt/widgets.dart';

class TableViewPage extends StatefulWidget {

  const TableViewPage({super.key});

  @override
  State<TableViewPage> createState() => _TableViewPageState();

}

class _TableViewPageState extends State<TableViewPage> {

  double opacityValue = 0.05;
  List<String> mySymbols = [];
  late Future<List<String>> myFutureSymbols;

  Future<List<String>> captureData() async {

    final response = await http.get(
      
      Uri.parse('${AppConstants.uriBase}/api/symbolData'),
      headers: {

        'Content-type': 'application/json',
        'Accept': 'application/json'

      }  
      
    );

    if (response.statusCode == 200) {

      return symbolInformationFromJson(response.body);

    } else {

      throw Exception('Failed to load data');

    }

  }

  @override
  void initState() {

    SystemChrome.setPreferredOrientations([
      
      DeviceOrientation.landscapeLeft
      
    ]);

    myFutureSymbols = captureData();
    super.initState();

  }

  bool _isValidElement(int i, int j) => !(

    (i == 0 && j >= 1 && j <= 16) ||
    (i >= 1 && i <= 2 && j >= 2 && j <= 11)

  );

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: size.height / 6),
        child: SizedBox(

          width: double.infinity,
          height: double.infinity,
          child: FutureBuilder<List<String>> (

            future: myFutureSymbols,
            builder: (context, snapshot) {

              if (snapshot.connectionState == ConnectionState.waiting) {

                return const Center(child: CircularProgressIndicator());

              } else if (snapshot.hasError) {

                return Center(child: Text('Error: ${snapshot.error}'));

              } else if (snapshot.hasData) {

                mySymbols = snapshot.data!;
                return Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(

                    7,
                    (i) => Row(

                      children: List.generate(

                        18,
                        (j) {

                          int validIndex = -1;

                          bool isValid = _isValidElement(i, j);

                          bool condLan = (i == 5 && j == 2);
                          bool condAct = (i == 6 && j == 2);

                          if (isValid) {

                            validIndex = 0;

                            for (int x = 0; x < i * 18 + j; x++) {

                              if (_isValidElement(x ~/ 18, x % 18)) {

                                validIndex++;

                              }

                            }

                          }

                          return Expanded(

                            child: GestureDetector(

                              onTap: _isValidElement(i, j) ? () {

                                if (condLan || condAct) {

                                  // Serie del Lantano y Actinio

                                  MyHelperButton(
                                    
                                    title: condLan ? 'Serie del Lantano' : 'Serie del Actinio',
                                    canScroll: true,
                                    myContent: List.generate(
                                          
                                      15, 
                                      (k) {

                                        return Container(

                                          height: size.width / 20,
                                          width: size.width / 20,
                                          decoration: BoxDecoration(

                                            border: Border.all(color: Theme.of(context).indicatorColor),
                                            color: Color.fromRGBO(                                    
                                              
                                              Random().nextInt(256),
                                              Random().nextInt(256),
                                              Random().nextInt(256),
                                              opacityValue

                                            ),

                                          ),

                                          child: Center(
                                            
                                            child: Text(mySymbols[validIndex])
                                            
                                          ),

                                        );

                                      }
                                      
                                    ),
                                    
                                  ).myCustomShowDialog(context);

                                } else {

                                  Navigator.of(context).push(

                                    MaterialPageRoute(

                                      builder: (context) => CallWidgetFunction(

                                        primaryKey: validIndex + 1,
                                        orientation: SystemChrome.setPreferredOrientations([
                                          
                                          DeviceOrientation.portraitUp
                                          
                                        ]),

                                      ),

                                    ),

                                  );                                  

                                }

                              } : null,

                              child: Container(

                                height: size.width / 20,
                                width: size.width / 20,
                                decoration: isValid
                                ? BoxDecoration(

                                  color: Color.fromRGBO(

                                    Random().nextInt(256),
                                    Random().nextInt(256),
                                    Random().nextInt(256),
                                    !(condLan || condAct) ? opacityValue : opacityValue + 0.5,

                                  ),

                                  border: Border.all(color: Theme.of(context).indicatorColor),

                                )

                                : const BoxDecoration(),
                                child: isValid && validIndex >= 0 && validIndex < mySymbols.length
                                ? !(condLan || condAct) ? Center(

                                  child: Text(mySymbols[validIndex]),

                                ) : Container()

                                : null,

                              ),

                            ),

                          );

                        },

                      ),

                    ),

                  ),

                );

              } else {

                return const Center(child: Text('No data'));

              }

            },

          ),

        ),

      ),

    );

  }

}

