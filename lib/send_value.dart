import 'package:flutter/material.dart';
import 'package:namedroutes/ogrenci_detay.dart';

import 'ogrenci_model_class.dart';

class SendValue extends StatelessWidget {
  const SendValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = ModalRoute.of(context)?.settings.arguments as int;

    List<Ogrenci> ogrenciList = List.generate(
        value,
        (index) =>
            Ogrenci(id: index, ad: "${index}. ad", soyad: "${index}. soyad"));
    // List<ListTile> listTile = [];

    return Scaffold(
        appBar: AppBar(
          title: Text("Get Value"),
          backgroundColor: Colors.red,
        ),
        body: ListView(
          children: ogrenciList
              .map((e) => GestureDetector(
                  onTap: () {
                     Navigator.pushNamed(context, "/ogrenci_detay", arguments: e,);
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => OgrenciDetay(ogrenci: e,)));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(e.id.toString()),
                    ),
                    title: Text(e.ad),
                    subtitle: Text(e.soyad),
                  )))
              .toList(),
        ));
  }
}
