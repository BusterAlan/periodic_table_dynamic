import 'package:flutter/material.dart';

class MyHelperButton extends StatelessWidget {

  final String title;
  final List<Widget> myContent;
  final bool? canScroll;

  const MyHelperButton({ 
    
    super.key, 
    required this.title, 
    required this.myContent, 
    this.canScroll, 
    
  });

  @override
  Widget build(BuildContext context) {

    return TextButton(
                          
      onPressed: () {
          
        myCustomShowDialog(context);
          
      }, 
          
      child: Text(title)
                          
    );

  }

  Future<void> myCustomShowDialog(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return showAdaptiveDialog(
        
      context: context,
      builder: (context) {
      
        return AlertDialog(
        
          elevation: 0,
          scrollable: canScroll != null ? true : false,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            
            title, 
            style: const TextStyle(
              
              color: Colors.white,
              fontWeight: FontWeight.bold
              
            )
            
          ),
              
          content: canScroll == null ? 
          
          Column(
        
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: myContent,
        
          ) : SingleChildScrollView(

            scrollDirection: Axis.horizontal,
            child: Padding(

              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1, vertical: size.height * 0.1),
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center, 
                children: myContent
                
              ),
              
            ),

          ),
              
          actions: [
              
            TextButton(
              
              onPressed: () {
              
                Navigator.of(context).pop();
              
              }, 
              
              child: const Text('Ok')
              
            )
              
          ],
        
        );
      
      }
      
    );

  }

}

