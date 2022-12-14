import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:vanielson/widgets/buttons.dart';

class PortfolioCard2 extends StatelessWidget {
  PortfolioCard2({
    this.title = 'Portfolio Title',
    this.subtitle = 'subtitle',
    this.myRoleDescription = 'my role',
    this.synopsisDescription = 'synopsis',
    this.mediumDescription = 'medium',
    this.buttonOne = false,
    this.buttonOneTitle = 'title',
    this.buttonOneURL = '#',
    this.buttonTwo = false,
    this.buttonTwoTitle = 'title',
    this.buttonTwoURL = '#',
    this.buttonThree = false,
    this.buttonThreeTitle = 'title',
    this.buttonThreeURL = '#',
    this.cardIcon = 'vanielson_mask_01.jpg',
    this.backgroundImage = 'dojo_background_02.jpg',

    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String myRoleDescription;
  final String synopsisDescription;
  final String mediumDescription;
  final bool buttonOne;
  final String buttonOneTitle;
  final String buttonOneURL; // a function
  final bool buttonTwo;
  final String buttonTwoTitle;
  final String buttonTwoURL; // a function
  final bool buttonThree;
  final String buttonThreeTitle;
  final String buttonThreeURL; // a function;
  final String cardIcon;
  final String backgroundImage;

  double determineCardHeight(){
    double cardHeight = 460.0;
    if (buttonOne) {
      cardHeight = cardHeight;
    }
    if (buttonTwo) {
      cardHeight = cardHeight + 50;
    }
    if (buttonThree) {
      cardHeight = cardHeight + 50;
    }

    return cardHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxHeight);
          print(constraints.maxWidth);
          return Container(
            //height: constraints.maxHeight,
            height: 560,
            width: (MediaQuery.of(context).size.width) * .9,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: borderRadius1(),
              image: DecorationImage(
                image: AssetImage('images/$backgroundImage'),
                fit: BoxFit.cover,
              ),
              //color: surfaceColorTransparent1.withOpacity(0.9),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,0,8,0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage('assets/images/$cardIcon'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(title, style: primaryBodyTextBold01(fontSize: 20), textAlign: TextAlign.start,),
                            ],
                          ),
                          Row(
                            children: [
                              Text(subtitle, style: primaryBodyText01()),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  verticalRiser(context: context, multiplier: 2),

                  /// My Role
                  Column(
                    children: [
                      const SizedBox(width: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('MY ROLE', style: primaryBodyTextBold01(fontSize: 10), textAlign: TextAlign.left),
                        ],
                      ),
                      verticalRiser(context:context, multiplier: 0.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(child: Text(myRoleDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
                        ],
                      ),
                    ],
                  ),
                  verticalRiser(context: context, multiplier: 2),

                  /// Synopsis
                  Column(
                    children: [
                      const SizedBox(width: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Synopsis', style: primaryBodyTextBold01(), textAlign: TextAlign.left),
                        ],
                      ),
                      verticalRiser(context:context, multiplier: 0.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(child: Text(synopsisDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
                        ],
                      ),
                    ],
                  ),
                  verticalRiser(context: context, multiplier: 2),

                  /// Medium
                  Column(
                    children: [
                      const SizedBox(width: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Medium', style: primaryBodyTextBold01(), textAlign: TextAlign.left),
                        ],
                      ),
                      verticalRiser(context:context, multiplier: 0.5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Flexible(child: Text(mediumDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
                        ],
                      ),
                    ],
                  ),
                  verticalRiser(context:context, multiplier: 1),

                  /// Buttons
                  verticalRiser(context: context, multiplier: 1),
                  Visibility(
                    visible: buttonOne,
                    child: PrimaryButtonOpenURL(title: buttonOneTitle, url: buttonOneURL),
                  ),
                  verticalRiser(context: context, multiplier: 1),
                  Visibility(
                    visible: buttonTwo,
                    child: PrimaryButtonOpenURL(title: buttonTwoTitle, url: buttonTwoURL),
                  ),
                  verticalRiser(context: context, multiplier: 1),
                  Visibility(
                    visible: buttonThree,
                    child: PrimaryButtonOpenURL(title: buttonThreeTitle, url: buttonThreeURL),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
