import 'package:api_json_http/model/Car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class JsonVPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateValuesPage();
  }
}

class StateValuesPage extends State<JsonVPage> {
  List<Welcome> values;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: values_page_body(),
    );
  }
  Widget values_page_body() {
    return FutureBuilder(future:veriKaynaginiOlustur(), builder: (context,sonuc){
       if(sonuc.hasData){
         return ListView.builder(
             itemCount: values.length,
             itemBuilder: (context,index){
               return ListTile(
                 title: Text(values[index].kurulusYil.toString()),
               );
             });
       }else{
         debugPrint("yükleniyor");
       }
    });
  }

  Future<List<Welcome>> veriKaynaginiOlustur() async {
    /*  Future<String> jsonOku = DefaultAssetBundle.of(context)
        .loadString('assets/data/araba.json') as Future<String>;
    jsonOku.then((gelen_value) {
      return gelen_value;
    });*/
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString('assets/data/araba.json');
    //decode verileri parçalar ve json objesine dönüştürür.
    List<Welcome> arabaList = (json.decode(gelenJson) as List).map((e) => Welcome.fromJson(e)).toList();
    for (int i = 0; i < arabaList.length; i++) {

    }
    return arabaList;
  }
}
