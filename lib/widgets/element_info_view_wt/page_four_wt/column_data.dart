import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/constants.dart';

import '../widgets.dart';

class ColumnData extends StatelessWidget {

  final String titleInfo;
  final List<Widget> oxidationViewNumberList;

  const ColumnData({

    super.key,
    required this.oxidationViewNumberList, 
    required this.titleInfo,

  });

  @override
  Widget build(BuildContext context) {
    
    return CustomContainer(
    
      innerColor: Colors.black38,
      myColorBorder: Colors.white,
      content: Column(
    
        children: [
    
          Padding(
    
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              
              titleInfo,
              style: AppConstants.underAndBold,
              
            ),
    
          ),
    
          Column(
    
            children: oxidationViewNumberList,
    
          )
    
        ],
    
      ),
    
    );

  }

}

