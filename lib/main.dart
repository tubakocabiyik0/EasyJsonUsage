import 'package:api_json_http/screens/home_page.dart';
import 'package:api_json_http/screens/json_values.dart';
import 'package:api_json_http/screens/remote_values.dart';
import 'package:api_json_http/screens/with_future_builder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/HomePage",
      routes: {
        '/HomePage':(context)=>HomePage(),
        '/JsonValuesPage':(context)=>JsonValuesPage(),
        '/JsonVPage':(context)=>JsonVPage(),
        '/RemotePage':(context)=>RemoteValues(),
      },
    );
  }

  // This widget is the root of your application.

}
