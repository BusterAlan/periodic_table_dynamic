import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageModel extends StatefulWidget {

  final Color groupColor;
  final String alusivePhoto;
  final List<Widget> customContent;

  const PageModel({

    super.key, 
    required this.groupColor, 
    required this.alusivePhoto, 
    required this.customContent

  });

  @override
  State<PageModel> createState() => _PageModelState();

}

class _PageModelState extends State<PageModel> {

  final controller = PageController();

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(

      body: SafeArea(

        child: Stack(

          children: [

            Align(

              alignment: Alignment.bottomCenter,
              child: Container(

                height: (size.height) / 2.5,
                decoration: BoxDecoration(

                  gradient: LinearGradient(

                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [

                      widget.groupColor.withOpacity(0.4), 
                      widget.groupColor.withOpacity(0.0),

                    ],

                  ),

                ),

              ),

            ),

            DecorationColorBox(
              
              customColor: widget.groupColor,
              size: size,
              
            ),

            Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Expanded(

                  child: PageView(

                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: widget.customContent,

                  ),

                ),

                SizedBox(

                  height: 50,
                  child: SmoothPageIndicator(
                  
                    controller: controller, 
                    count: widget.customContent.length,
                    effect: JumpingDotEffect(

                      activeDotColor: widget.groupColor,
                      radius: 20,
                      spacing: 10,

                    ),
                  
                  ),

                ),

              ],

            ),

          ],

        ),

      ),

    );

  }

}

