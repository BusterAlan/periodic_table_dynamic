import 'package:flutter/material.dart';

class PageFiveElement extends StatelessWidget {

  const PageFiveElement({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Table(

          border: TableBorder.all(

            width: 1,
            color: Theme.of(context).indicatorColor

          ),

        )

      ],

    );

  }

}

