import 'package:flutter/material.dart';
import './text_output.dart';

// ignore: use_key_in_widget_constructors
class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  String _mainText = "This is initial text!";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RaisedButton(textTheme: ButtonTextTheme.accent ,
          child: Text("Change text!"),
          onPressed: () {
            setState(() {
              _mainText = 'The text has been changes';
            });
          },
        ),
        TextOutput(_mainText)
      ],
    );
  }
}
