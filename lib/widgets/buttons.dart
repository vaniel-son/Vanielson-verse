import 'package:flutter/material.dart';
import 'dart:html' as html;

class PrimaryButtonOpenURL extends StatelessWidget {
  const PrimaryButtonOpenURL({Key? key, this.title = 'title', this.url = 'www.vanielson.com'}) : super(key: key);

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        ),
        onPressed: () {
          //onPressAction();
          html.window.open(url, 'new tab');
          print('tap2');
        },
        child: Text(title),
      ),
    );
  }
}
