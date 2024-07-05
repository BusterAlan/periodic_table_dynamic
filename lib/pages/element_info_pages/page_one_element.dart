import 'package:flutter/material.dart';
import 'package:periodic_table_dynamic/apiservice.dart';
import 'package:periodic_table_dynamic/constants.dart';
import 'package:periodic_table_dynamic/database/periodic_table_element.dart';
import 'package:periodic_table_dynamic/widgets/element_info_view_wt/widgets.dart';
import 'package:provider/provider.dart';

class PageOneElement extends StatelessWidget {

  final String alusivePhoto;

  const PageOneElement({ 
    
    super.key,
    required this.alusivePhoto
    
  });

  @override
  Widget build(BuildContext context) {

    List<Widget> myElecLayers(Electroniclayers e) { 

      TupleTemporal tt = calculateSizeLayers(e);

      List<Color> shadingColors = [

        Colors.white.withOpacity(0.05),
        Colors.white12,
        Colors.white24,
        Colors.white30,
        Colors.white38,
        Colors.white54,
        Colors.white60,
        Colors.white70

      ];
      
      return List.generate(
      
        tt.amountLayers, 
        (index) => Container(

          color: shadingColors[index],
          width: 25,
          height: tt.accurateSize,
          child: Center(child: Text(tt.electronicToString[index]),),

        ),

      );

    }

    return Consumer<ApiService>(
      
      builder: (context, apiService, child) {

        PeriodicTableElement element = apiService.data!;

        return Column(
      
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(

                  decoration: AppConstants.myBoxDeco(context),
                  child: Tooltip(

                    message: 'Capas electrónicas',
                    child: Column(
                    
                      children: myElecLayers(element.electroniclayers),
                    
                    ),

                  ),

                ),

                const SizedBox(width: 15),

                SquareElement(),

              ],

            ),

            ClipRRect(
          
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                
                alusivePhoto,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
                
              ),
          
            ),

          ],
          
        );

      },
      
    );

  }

}

class TupleTemporal {

  final double accurateSize;
  final List<String> electronicToString;
  final int amountLayers;
  
  const TupleTemporal({

    required this.accurateSize,
    required this.electronicToString,
    required this.amountLayers

  });

}

TupleTemporal calculateSizeLayers(Electroniclayers e) {

  if (

    // Solo un valor de capa, y siete en ceros
    
    e.k != 0 && e.l == 0 && 
    e.m == 0 && e.n == 0 && 
    e.o == 0 && e.p == 0 &&
    e.q == 0 && e.r == 0
    
  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare, 
      electronicToString: [
        
        e.k.toString()
        
      ],

      amountLayers: 1
      
    );

  } else if (

    // Dos valores de capa, y seis en ceros

    e.k != 0 && e.l != 0 && 
    e.m == 0 && e.n == 0 && 
    e.o == 0 && e.p == 0 &&
    e.q == 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 2, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString()
        
      ],

      amountLayers: 2
      
    );

  } else if (

    // Tres valores de capa, y cinco en ceros

    e.k != 0 && e.l != 0 && 
    e.m != 0 && e.n == 0 && 
    e.o == 0 && e.p == 0 &&
    e.q == 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 3, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString()
        
      ],

      amountLayers: 3
      
    );

  } else if (

    // Cuatro valores de capa, y cuatro en ceros

    e.k != 0 && e.l != 0 && 
    e.m != 0 && e.n != 0 && 
    e.o == 0 && e.p == 0 &&
    e.q == 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 4, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString(),
        e.n.toString()
        
      ],

      amountLayers: 4
      
    );

  } else if (

    // Cinco valores de capa, y tres en ceros

    e.k != 0 && e.l != 0 && 
    e.m != 0 && e.n != 0 && 
    e.o != 0 && e.p == 0 &&
    e.q == 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 5, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString(),
        e.n.toString(),
        e.o.toString()
        
      ],

      amountLayers: 5
      
    );

  } else if (

    // Seis valores de capa, y dos en ceros

    e.k != 0 && e.l != 0 && 
    e.m != 0 && e.n != 0 && 
    e.o != 0 && e.p != 0 &&
    e.q == 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 6, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString(),
        e.n.toString(),
        e.o.toString(),
        e.p.toString()
        
      ],

      amountLayers: 6
      
    );

  } else if (

    // Siete valores de capa, y uno en cero

    e.k != 0 && e.l != 0 && 
    e.m != 0 && e.n != 0 && 
    e.o != 0 && e.p != 0 &&
    e.q != 0 && e.r == 0

  ) {

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 7, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString(),
        e.n.toString(),
        e.o.toString(),
        e.p.toString(),
        e.r.toString()
        
      ],

      amountLayers: 7
      
    );

  } else {

    // Todos usados, valores iguales para todos

    return TupleTemporal(
      
      accurateSize: AppConstants.sizeSquare / 8, 
      electronicToString: [
        
        e.k.toString(),
        e.l.toString(),
        e.m.toString(),
        e.n.toString(),
        e.o.toString(),
        e.p.toString(),
        e.r.toString(),
        e.q.toString()
        
      ],

      amountLayers: 8
      
    );

  }

}

