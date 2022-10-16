import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, this.title = 'title', this.onPressAction}) : super(key: key);

  final String title;
  final dynamic onPressAction;

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
          print('tap');
        },
        child: Text(title),
      ),
    );
  }
}
