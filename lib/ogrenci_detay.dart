import 'package:flutter/material.dart';

import 'ogrenci_model_class.dart';

class OgrenciDetay extends StatelessWidget {
 // final Ogrenci ogrenci;
 // OgrenciDetay({Key? key, required this.ogrenci}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
     var value = ModalRoute.of(context)?.settings.arguments as Ogrenci;
    return Scaffold(
      appBar: AppBar(
        title: Text("Ogrenci Detay"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("id: ${value.id}"),
            Text("Ad: ${value.ad}"),
            Text("Soyad: ${value.soyad}"),
          ],
        ),
      ),
    );
  }
}
