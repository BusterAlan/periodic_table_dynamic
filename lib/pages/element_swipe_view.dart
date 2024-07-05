import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:periodic_table_dynamic/pages/element_info_pages/element_info_pages.dart';
import 'package:periodic_table_dynamic/pages/element_info_pages/page_seven_element.dart';
import 'package:periodic_table_dynamic/pages/page_model.dart';

class ElementSwipeView extends StatefulWidget {

  final String alusivePhoto;
  final Future<void>? orientation;

  const ElementSwipeView({ 
    
    super.key, 
    required this.alusivePhoto,
    this.orientation, 
    
  });

  @override
  State<ElementSwipeView> createState() => _ElementSwipeViewState();

}

class _ElementSwipeViewState extends State<ElementSwipeView> {

  @override
  void initState() {

    if (widget.orientation != null) {

      widget.orientation;

    }

    super.initState();

  }

  @override
  void dispose() {

    SystemChrome.setPreferredOrientations([

      DeviceOrientation.landscapeLeft

    ]);

    super.dispose();

  }

  @override
  Widget build(BuildContext context) {

    return PageModel(
      
      customContent: [ 
        
        PageOneElement(alusivePhoto: widget.alusivePhoto),

        const PageTwoElement(),

        const PageThreeElement(),

        const PageFourElement(),

        const PageFiveElement(),

        const PageSixElement(),

        const PageSevenElement()

      ]
      
    );

  }

}

