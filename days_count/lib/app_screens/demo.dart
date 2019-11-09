import 'package:flutter/material.dart';

class Demoscr extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Demoscr();
  }

class _Demoscr extends State<Demoscr> {
  @override

  String mytext = "Hello World";

  void _afterPressing() {

    setState(() {
      if(mytext.startsWith("H")){
      mytext = "Welcome to my App";
      }else {
        mytext = "Hello World";
    }});
  }


  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter Demo")),
        body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(mytext),
              RaisedButton(
                child: Text("Click"),
                onPressed:_afterPressing,
                )
                ],
              )
           
            ),
        ),
      ));
  }

}