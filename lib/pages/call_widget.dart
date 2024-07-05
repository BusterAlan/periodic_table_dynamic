import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';

import 'package:periodic_table_dynamic/pages/element_swipe_view.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class CallWidgetFunction extends StatefulWidget {

  final int primaryKey;
  final Future<void>? orientation;

  const CallWidgetFunction({super.key, required this.primaryKey, this.orientation});

  @override
  State<CallWidgetFunction> createState() => _CallWidgetFunctionState();

}

class _CallWidgetFunctionState extends State<CallWidgetFunction> {

  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    
    return Consumer<ApiService>(

      builder: (context, apiService, child) {

        if (apiService.data != null) {

          return ElementSwipeView(
      
            orientation:  widget.orientation,
            alusivePhoto: 'assets/cloud_test.jpg',
            
          );

        } else {

          return const CustomCircularProgress();

        }

      },

    );

  }

}

