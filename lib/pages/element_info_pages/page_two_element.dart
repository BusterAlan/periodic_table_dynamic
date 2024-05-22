import 'package:flutter/material.dart';

class PageTwoElement extends StatelessWidget {

  final Color groupColor;
  final String alusivePhoto, elementData;

  const PageTwoElement({ 
    
    super.key, 
    required this.groupColor, 
    required this.alusivePhoto, 
    required this.elementData
    
  });

  @override
  Widget build(BuildContext context) {

    // Page Two

    return Column(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [ 
        
        Padding(

          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(

            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(

              color: Colors.black54,
              borderRadius: BorderRadius.circular(25)

            ),

            child: Text(
              
              elementData,
              textAlign: TextAlign.justify,
              
            ),

          ),

        ),

      ]
      
    );

  }

}

