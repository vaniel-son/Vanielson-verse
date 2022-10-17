import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:flutter/material.dart';
import 'package:vanielson/widgets/buttons.dart';

class PortfolioCard extends StatefulWidget {
  PortfolioCard({
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
  final String buttonOneURL;
  final bool buttonTwo;
  final String buttonTwoTitle;
  final String buttonTwoURL;
  final bool buttonThree;
  final String buttonThreeTitle;
  final String buttonThreeURL;
  final String cardIcon;
  final String backgroundImage;
  final Color cardShadowColor;

  @override
  State<PortfolioCard> createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> with TickerProviderStateMixin {
  double determineCardHeight(){
    double cardHeight = 500.0;
    if (widget.buttonOne) {
      cardHeight = cardHeight;
    }
    if (widget.buttonTwo) {
      cardHeight = cardHeight + 50;
    }
    if (widget.buttonThree) {
      cardHeight = cardHeight + 50;
    }

    return cardHeight;
  }

  late AnimationController _animationControllerBlurRadius;
  late Animation _animationBlurRadius;

  late AnimationController _animationControllerSpreadRadius;
  late Animation _animationSpreadRadius;

  @override
  void initState() {
    // TODO: implement initState
    _animationControllerBlurRadius = AnimationController(vsync:this,duration: const Duration(seconds: 2));
    _animationControllerBlurRadius.repeat(reverse: true);
    _animationBlurRadius =  Tween(begin: 20.0,end: 33.0).animate(_animationControllerBlurRadius)..addListener((){
      setState(() {

      });
    });

    _animationControllerSpreadRadius = AnimationController(vsync:this,duration: const Duration(seconds: 2));
    _animationControllerSpreadRadius.repeat(reverse: true);
    _animationSpreadRadius =  Tween(begin: 3.0,end: 15.0).animate(_animationControllerBlurRadius)..addListener((){
      setState(() {

      });
    });
    super.initState();
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
                color: widget.cardShadowColor,
                blurRadius: _animationBlurRadius.value, // soften the shadow, 33
                spreadRadius: _animationSpreadRadius.value, //extend the shadow, 3
                offset: const Offset(
                  1.0, // Move to right 5  horizontally
                  5.0, // Move to bottom 5 Vertically
                ),
              )
            ],
            borderRadius: borderRadius1(),
            image: DecorationImage(
              image: AssetImage('assets/images/${widget.backgroundImage}'),
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
                visible: widget.buttonOne,
                child: Column(
                  children: [
                    PrimaryButtonOpenURL(title: widget.buttonOneTitle, url: widget.buttonOneURL,),
                    verticalRiser(context: context, multiplier: 1),
                  ],
                ),
              ),
              //verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: widget.buttonTwo,
                child: Column(
                  children: [
                    PrimaryButtonOpenURL(title: widget.buttonTwoTitle, url: widget.buttonTwoURL),
                    verticalRiser(context: context, multiplier: 1),
                  ],
                ),
              ),
              //verticalRiser(context: context, multiplier: 1),
              Visibility(
                visible: widget.buttonThree,
                child: Column(
                  children: [
                    PrimaryButtonOpenURL(title: widget.buttonThreeTitle, url: widget.buttonThreeURL),
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
                          backgroundImage: AssetImage('assets/images/${widget.cardIcon}'),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(widget.title, style: primaryBodyTextBold01(fontSize: 20), textAlign: TextAlign.start,),
                        ],
                      ),
                      Row(
                        children: [
                          Text(widget.subtitle, style: primaryBodyText01()),
                        ],
                      ),
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
                      Flexible(child: Text(widget.synopsisDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
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
                      Text('My Role', style: primaryBodyTextBold01(fontSize: 10), textAlign: TextAlign.left),
                    ],
                  ),
                  verticalRiser(context:context, multiplier: 0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(child: Text(widget.myRoleDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
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
                      Flexible(child: Text(widget.mediumDescription, style: primaryBodyText01(), textAlign: TextAlign.left)),
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
