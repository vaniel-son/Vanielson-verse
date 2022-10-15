import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({this.title = 'Portfolio Title', this.subtitle = 'subtitle', this.myRole = 'my role',
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String myRole;

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
            color: surfaceColorTransparent1.withOpacity(0.6),
          ),
          child: Column(
            children: [

              /// Title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Text(title, style: primaryBTBold1()),
                      Text(subtitle),
                    ],
                  ),
                ],
              ),
              verticalRiser(context: context, multiplier: 2),

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

              /// My Role
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 4),
                      Text(myRole, style: primaryBTBold1()),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
