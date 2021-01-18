import 'package:flutter/material.dart';
import 'package:chatapp/Chatscreen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("What's up"),
      ),
      body: Chatscreen(),
    );
  }
}
