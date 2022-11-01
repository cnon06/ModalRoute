import 'package:flutter/material.dart';
import 'package:namedroutes/ogrenci_detay.dart';
import 'package:namedroutes/send_value.dart';

import 'main_page.dart';



class RouteGenerator {
//   static Route _subRoute(Widget route) {
//     return defaultTargetPlatform == TargetPlatform.android
//         ? MaterialPageRoute(builder: (context) => route)
//         : CupertinoPageRoute(builder: (context) => route);
//   }

  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const MainPage());
       
         case "/send_value":
       return  MaterialPageRoute(builder: (context) => const SendValue(), settings:  settings);

        case "/ogrenci_detay":
        
       return  MaterialPageRoute(builder: (context) => OgrenciDetay(), settings:  settings);
      default:
        return  MaterialPageRoute(builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("Error")
          )
          )
          );
    }
  }
}
