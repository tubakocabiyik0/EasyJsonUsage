import 'dart:convert';

import 'package:api_json_http/model/Post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RemoteValues extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateRemote();
  }
}

class StateRemote extends State<RemoteValues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  body() {
    return FutureBuilder(
        future: verileriAl(),
        builder: (context,AsyncSnapshot<List<Post>> snapshot){
        if (snapshot.hasData && snapshot.data.length!= null){
           return ListView.builder(
               itemCount: snapshot.data.length,
               itemBuilder: (context,index){
            return ListTile(
              title: Text(snapshot.data[index].title),
            ) ;
           });

        }else{
          return Center(child: CircularProgressIndicator());
        }
        });
  }

  Future<List<Post>> verileriAl() async {
    var response = await http.get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == 200) {
      return (json.decode(response.body) as List).map((getList) =>
          Post.fromJson(getList)).toList();
    } else {
      throw Exception("baglanamadı");
    }
  }
}
