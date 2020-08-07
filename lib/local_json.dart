import 'package:flutter/material.dart';
import 'dart:convert';

class LocalJson extends StatefulWidget {
  @override
  _LocalJsonState createState() => _LocalJsonState();
}

class _LocalJsonState extends State<LocalJson> {
  @override
  Widget build(BuildContext context) {
    verileriGetir();

    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json"),
      ),
      body: Center(
        child: Text("Gelen Local Json Verileri"),
      ),
    );
  }

  verileriGetir() async{
   /*Future<String> gelenVeri =  DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
   gelenVeri.then((value) => debugPrint("Gelen veri: " + value.toString()));*/

   var gelenVeri = await DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
   debugPrint("Gelen veri: " + gelenVeri.toString());

   List arabaSayisi = json.decode(gelenVeri);
   debugPrint("Toplam araba sayisi: " + arabaSayisi.length.toString());

  }
}
