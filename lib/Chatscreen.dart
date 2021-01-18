import 'package:flutter/material.dart';
import 'package:chatapp/chat_message.dart';

class Chatscreen extends StatefulWidget {
  @override
  _ChatscreenState createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {

  TextEditingController _t1 = new TextEditingController();
  final List<Chatmessage> _l1 = <Chatmessage>[];

  void _handlesubmitted(String text)
  {
      _t1.clear();
      Chatmessage message = new Chatmessage(
        text: text
      );
      setState(() {
         _l1.insert(0, message);
      });
  }

  Widget _textComposerWidget(){
    return new IconTheme(
        data: new IconThemeData(
          color: Colors.blue,
        ),
        child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                  child: new TextField(
                    decoration: new InputDecoration.collapsed(hintText: "Enter message"),
                    controller: _t1,
                    onSubmitted: _handlesubmitted,
                  ),
              ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: new Icon(Icons.send),
                    onPressed: () => _handlesubmitted(_t1.text)
                ),
              )
            ],
          ),
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_,int index)=> _l1[index],
              itemCount: _l1.length,
            ),
        ),

        new Divider(
          height: 1.0,
        ),

        new Container(
          decoration: new BoxDecoration(
             color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        ),
      ],
    );
  }
}
