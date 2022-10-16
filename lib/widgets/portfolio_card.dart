import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:vanielson/widgets/buttons.dart';

class PortfolioCard extends StatelessWidget {
  PortfolioCard({
    this.title = 'Portfolio Title',
    this.subtitle = 'subtitle',
    this.myRoleDescription = 'my role',
    this.synopsisDescription = 'synopsis',
    this.mediumDescription = 'medium',
    this.buttonOne = false,
    this.buttonOneTitle = 'title',
    this.buttonOnePressAction,
    this.buttonTwo = false,
    this.buttonTwoTitle = 'title',
    this.buttonTwoPressAction,
    this.buttonThree = false,
    this.buttonThreeTitle = 'title',
    this.buttonThreePressAction,
    this.cardIcon = 'van_mask_square_large.png',
    this.backgroundImage = 'dojo_background_02.jpg',
    this.cardShadowColor = Colors.blue,

    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final String myRoleDescription;
  final String synopsisDescription;
  final String mediumDescription;
  final bool buttonOne;
  final String buttonOneTitle;
  final dynamic buttonOnePressAction; // a function
  final bool buttonTwo;
  final String buttonTwoTitle;
  final dynamic buttonTwoPressAction; // a function
  final bool buttonThree;
  final String buttonThreeTitle;
  final dynamic buttonThreePressAction; // a function;
  final String cardIcon;
  final String backgroundImage;
  final Color cardShadowColor;

  double determineCardHeight(){
    double cardHeight = 500.0;
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
    return Stack(
      children: [
        Container(
          width: (MediaQuery.of(context).size.width) * .90,
          height: determineCardHeight(),
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: cardShadowColor,
                blurRadius: 33.0, // soften the shadow
                spreadRadius: 3.0, //extend the shadow
                offset: const Offset(
                  1.0, // Move to right 5  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            borderRadius: borderRadius1(),
            image: DecorationImage(
              image: AssetImage('images/$backgroundImage'),
              fit: BoxFit.cover,
            ),
            //color: surfaceColorTransparent1.withOpacity(0.9),
          ),
        ),
        Container(
          width: (MediaQuery.of(context).size.width) * .90,
          height: determineCardHeight(),
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: borderRadius1(),
            color: onPrimaryBlack.withOpacity(.75),
          ),

            /// Buttons
            child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonOne,
                child: Column(
                  children: [
                    PrimaryButton(title: buttonOneTitle, onPressAction: buttonOnePressAction),
                    verticalRiser(context: context, multiplier: 1),
                  ],
                ),
              ),
              //verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonTwo,
                child: Column(
                  children: [
                    PrimaryButton(title: buttonTwoTitle, onPressAction: buttonTwoPressAction),
                    verticalRiser(context: context, multiplier: 1),
                  ],
                ),
              ),
              //verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonThree,
                child: Column(
                  children: [
                    PrimaryButton(title: buttonThreeTitle, onPressAction: buttonThreePressAction),
                    verticalRiser(context: context, multiplier: 1),
                  ],
                ),
              ),
            ],
          )
        ),
        Container(
          width: (MediaQuery.of(context).size.width) * .90,
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(16.0),
          /*decoration: BoxDecoration(
            borderRadius: borderRadius1(),
            image: const DecorationImage(
              image: AssetImage('images/dojo_background_01.png'),
              fit: BoxFit.cover,
            ),
            //color: surfaceColorTransparent1.withOpacity(0.9),
          ),*/
          child: Column(
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
                      Text('Synopsis', style: primaryBodyTextBold01(fontSize: 10), textAlign: TextAlign.left),
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
                      Text('Medium', style: primaryBodyTextBold01(fontSize: 10), textAlign: TextAlign.left),
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

            ],
          ),
        ),
/*
        Align(
          alignment: Alignment.bottomCenter ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonOne,
                child: PrimaryButton(title: buttonOneTitle, onPressAction: buttonOnePressAction),
              ),
              verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonTwo,
                child: PrimaryButton(title: buttonTwoTitle, onPressAction: buttonTwoPressAction),
              ),
              verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: buttonThree,
                child: PrimaryButton(title: buttonThreeTitle, onPressAction: buttonThreePressAction),
              ),
            ],
          ),
        )
*/

      ],
    );
  }
}
