import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageModel extends StatefulWidget {

  final PreferredSizeWidget? myAppBar;
  final List<Widget> customContent;

  const PageModel({ 
    
    super.key, 
    this.myAppBar, 
    required this.customContent, 
    
  });

  @override
  State<PageModel> createState() => _PageModelState();

}

class _PageModelState extends State<PageModel> {

  late final controller = PageController();

  @override
  Widget build(BuildContext context) {

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;
        
        Size size = MediaQuery.of(context).size;

        Color groupColor = Color.fromRGBO(
                            
          element.color.red, 
          element.color.green, 
          element.color.blue, 
          0.4
          
        );

        return Scaffold(

          appBar: widget.myAppBar,
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

                          groupColor.withOpacity(0.4), 
                          Colors.transparent,

                        ],

                      ),

                    ),

                  ),

                ),

                DecorationColorBox(
                  
                  customColor: groupColor,
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

                          activeDotColor: groupColor,
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

      },
      
    );

  }

}

