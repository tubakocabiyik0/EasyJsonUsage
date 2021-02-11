import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StateHomePage();
  }
}

class StateHomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent.shade100,
      ),
      body: bodyForHome(),
    );
  }

  Widget bodyForHome() {
    return Center(
      child: RaisedButton(
        child: Text("go to json values"),
        onPressed: () {
          Navigator.pushNamed(context, "/JsonValuesPage");
        },
      ),
    );
  }
}
