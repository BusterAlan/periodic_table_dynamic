import 'package:flutter/material.dart';

class PageTwoElement extends StatelessWidget {

  final String elementData, latinName, englishName, casNumber;

  const PageTwoElement({ 
    
    super.key, 
    required this.elementData, 
    required this.latinName, 
    required this.englishName, 
    required this.casNumber
    
  });

  @override
  Widget build(BuildContext context) {

    // Page Two

    return Column(
      
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [ 

        Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text(
                
                  englishName, 
                  style: const TextStyle(
                    
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                    
                  ),
                  
                ),

                const SizedBox(width: 10),

                Text(
                  
                  latinName, 
                  style: TextStyle(
                    
                    fontSize: 20, 
                    fontStyle: FontStyle.italic,
                    color: Theme.of(context).indicatorColor.withOpacity(0.66),
                    
                  ),
                  
                ),

              ],

            ),

            Text(
              
              'CAS$casNumber', 
              style: TextStyle(

                fontSize: 30,
                color: Theme.of(context).indicatorColor.withOpacity(0.25),
                fontWeight: FontWeight.w900

              ),
              
            ),

          ],

        ),
        
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

