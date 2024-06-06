import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/pages/page_model.dart';

class CustomCircularProgress extends StatefulWidget {

  const CustomCircularProgress({ super.key, });

  @override
  State<CustomCircularProgress> createState() => _CustomCircularProgressState();

}

class _CustomCircularProgressState extends State<CustomCircularProgress> {

  @override
  void initState() {
    
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {

    return const PageModel(
      
      groupColor: Colors.transparent, 
      customContent: [
    
        Center(
          
          child: FittedBox(
            
            child: CircularProgressIndicator(
            
              color: Colors.purpleAccent,
              valueColor: AlwaysStoppedAnimation(
                
                Colors.limeAccent
                
              ),
            
            )
              
          )
          
        )
    
      ]
      
    );

  }
}

