import 'package:flutter/material.dart';

const String _name = "Kapil";

class Chatmessage extends StatelessWidget {

  final String text;
  Chatmessage({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            children: <Widget>[
              new Text(_name , style: Theme.of(context).textTheme.subhead, textAlign: TextAlign.right,),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              )
            ],
          )
        ],
      ),
    );
  }


}
