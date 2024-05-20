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
            
            backgroundColor: MaterialStatePropertyAll(Color(0xFF221c2e)),
            side: MaterialStatePropertyAll(
              
              BorderSide(color: Colors.white)
              
            ),

            foregroundColor: MaterialStatePropertyAll(Colors.white)

          )

        ),

      ),

      home: const ElementPage(
        
        groupColor: Color.fromRGBO(236,105,18,1),
        alusivePhoto: 'assets/hidrogeno.jpg',
        elementData: "El hidrógeno es el elemento más ligero y abundante en el universo, constituyendo aproximadamente el 75% de la materia elemental. Es un gas incoloro, inodoro y altamente inflamable en su forma diatómica (H₂). Aunque se encuentra en grandes cantidades en estrellas y planetas gaseosos, en la Tierra se encuentra principalmente en forma de compuestos como el agua y los hidrocarburos.",
        symbol: 'H',
        name: 'Hidrógeno',
        atomicNumber: 1,
        atomicMass: 1.0078,
        yearDiscovered: 1766,
        boilingPoint: -252.9,
        meltingPoint: -259.1,
        densityValue: 0.09,
        electronegativity: 2.2,
        oxidationNumbers: [ -1, 1 ],
        
      ),

/*       home: const ElementPage(
        
        groupColor: Color.fromRGBO(147,167,14,1),
        alusivePhoto: 'assets/cloro.jpg',
        elementData: "El cloro es un elemento químico perteneciente al grupo de los halógenos, con el símbolo Cl y número atómico 17. Es un gas amarillo verdoso, con un olor acre y muy reactivo. En su forma diatómica (Cl₂), es altamente tóxico y se utiliza principalmente como desinfectante y agente blanqueador. El cloro es esencial en la purificación de agua potable y en la desinfección de piscinas. Además, es un componente clave en la producción de una amplia variedad de productos químicos, incluidos los plásticos, solventes y medicamentos. Debido a su alta reactividad, el cloro raramente se encuentra en la naturaleza en su forma elemental, pero es abundante en forma de compuestos como la sal común (cloruro de sodio).",
        symbol: 'Cl',
        name: 'Cloro',
        atomicNumber: 17,
        atomicMass: 35.453,
        yearDiscovered: 1774,
        boilingPoint: -34.04,
        meltingPoint: -101.5,
        densityValue: 3.214,
        electronegativity: 3.16,
        oxidationNumbers: [ -1, 1, 3, 5, 7 ],
        
      ), */

    );

  }

}

