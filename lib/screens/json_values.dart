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
  List values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // verikaynağını oluştur dediğimizde yapı futurelist olarak geliyor biz then dedikten sonra onun liste halini kendi listemize eşitliyoruz
     veriKaynaginiOlustur().then((value) {
      setState(() {
        values=value;
      });
     });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: values_page_body(),
    );
  }

  Widget values_page_body() {
    veriKaynaginiOlustur();
    if (values != null) {
      return ListView.builder(
          itemCount: values.length,
          itemBuilder: (context,index){
      return ListTile(
        title:Text(values[index]["arabaAdi"]),
      );
    });
    } else {
       return Center(child: CircularProgressIndicator(),);
    }
  }

  Future<List> veriKaynaginiOlustur() async {
    /*  Future<String> jsonOku = DefaultAssetBundle.of(context)
        .loadString('assets/data/araba.json') as Future<String>;
    jsonOku.then((gelen_value) {
      return gelen_value;
    });*/
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString('assets/data/araba.json');
    //decode verileri parçalar ve json objesine dönüştürür.
    List arabaList = json.decode(gelenJson);
    for (int i = 0; i < arabaList.length; i++) {

    }
    return arabaList;
  }
}
