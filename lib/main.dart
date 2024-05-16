import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/element_info_page.dart';

void main() {

  runApp(const MainApp());

}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: const Color.fromARGB(255, 37, 37, 37),
        textTheme: const TextTheme(
          
          bodyLarge: TextStyle(
            
            color: Colors.white
            
          ),

          bodyMedium: TextStyle(

            color: Colors.white

          )
          
        ),

        textButtonTheme: const TextButtonThemeData(

          style: ButtonStyle(
            
            backgroundColor: MaterialStatePropertyAll(Color(0xFF221c2e)),
            side: MaterialStatePropertyAll(BorderSide(color: Colors.white)),
            foregroundColor: MaterialStatePropertyAll(Colors.white)

          )

        ),

      ),

      home: const ElementPage(
        
        groupColor: Colors.deepOrangeAccent,
        alusivePhoto: 'assets/hidrogeno.jpg',
        elementData: "El hidrógeno es el elemento más ligero y abundante en el universo, constituyendo aproximadamente el 75% de la materia elemental. Es un gas incoloro, inodoro y altamente inflamable en su forma diatómica (H₂). Aunque se encuentra en grandes cantidades en estrellas y planetas gaseosos, en la Tierra se encuentra principalmente en forma de compuestos como el agua y los hidrocarburos.",
        symbol: 'H',
        name: 'Hidrógeno',
        atomicNumber: 1,
        atomicMass: 1.0078,
        yearDiscovered: 1766,
        boilingPoint: -252.9,
        meltingPoint: -259.1,
        
      ),

    );

  }

}

