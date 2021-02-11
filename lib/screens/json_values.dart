import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class JsonValuesPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateValuesPage();
  }
}

class StateValuesPage extends State<JsonValuesPage> {
  List values = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: values_page_body(),
    );
  }

  Widget values_page_body() {
  veriKaynaginiOlustur();
  }

  veriKaynaginiOlustur() async {
  /*  Future<String> jsonOku = DefaultAssetBundle.of(context)
        .loadString('assets/data/araba.json') as Future<String>;
    jsonOku.then((gelen_value) {
      return gelen_value;
    });*/
  var gelenJson= await DefaultAssetBundle.of(context).loadString('assets/data/araba.json');
  //decode verileri parçalar ve json objesine dönüştürür.
  List arabaList =json.decode(gelenJson);
  for(int i =0;i<arabaList.length;i++){
    debugPrint(arabaList[i]["modelAdi"].toString());
  }

  }
}
