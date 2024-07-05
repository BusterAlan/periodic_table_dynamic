import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/pages/table_view.dart';
import 'package:provider/provider.dart';

void main() {

  runApp(
    
    ChangeNotifierProvider(
      
      create: (context) => ApiService(),
      child: const MainApp(),
      
    ),
    
  );

}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 37, 37, 37),
        textTheme: const TextTheme(
          
          bodyLarge: TextStyle(
            
            color: Colors.white
            
          ),

          bodyMedium: TextStyle(

            color: Colors.white

          ),
          
        ),

        textButtonTheme: const TextButtonThemeData(

          style: ButtonStyle(
            
            backgroundColor: WidgetStatePropertyAll(Color.fromARGB(121, 34, 28, 46)),
            side: WidgetStatePropertyAll(
              
              BorderSide(color: Colors.white)
              
            ),

            foregroundColor: WidgetStatePropertyAll(Colors.white)

          )

        ),

      ),

      home: const TableViewPage()

    );

  }

}

