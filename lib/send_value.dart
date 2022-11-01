import 'package:flutter/material.dart';

class SendValue extends StatelessWidget {
  const SendValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var value = ModalRoute.of(context)?.settings.arguments as int;

    return Scaffold(
      appBar: AppBar(
        title: Text("Get Value"),
        backgroundColor: Colors.red,
      ),
      body: Center(child:  Text("Value: $value"),),
    );
  }
}
