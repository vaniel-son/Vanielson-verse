import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({this.description = 'description',
    Key? key,
  }) : super(key: key);

  final String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: (MediaQuery.of(context).size.width) * .90,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: borderRadius1(),
            color: surfaceColorTransparent1.withOpacity(1),
          ),
          child: Column(
            children: [

              /// Title
              Text(description, textAlign: TextAlign.center, style: primaryBodyText01()),
              //verticalRiser(context: context, multiplier: 2),

              /*/// Headline
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('$Portfolio sbutitle'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              verticalRiser(context: context, multiplier: 2),*/
            ],
          ),
        ),
      ],
    );
  }
}
