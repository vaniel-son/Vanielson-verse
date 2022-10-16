import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vanielson/style/text_style.dart';
import 'package:vanielson/widgets/bio_card.dart';
import 'package:vanielson/widgets/buttons.dart';
import 'package:vanielson/widgets/portfolio_card.dart';
import 'package:vanielson/style/colors.dart';
import 'package:vanielson/style/style_misc.dart';
import 'package:vanielson/widgets/portfolio_card2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vanielson-verse',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Vanielson-verse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  buttonAction(){
    print('tab');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      backgroundColor: primaryBackgroundColor2,
      body: SizedBox(
        width: (MediaQuery.of(context).size.width),
        height: (MediaQuery.of(context).size.height * 1),
        child: Stack(
          children: [
            Opacity(
              opacity: 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/cloud_house_03.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              color: primaryBackgroundColor2.withOpacity(.9),
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height * 3),
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: 450,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height:48),
                        const CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage('assets/images/van_mask_square_large.png'),
                        ),
                        verticalRiser(context: context, multiplier: 1),
                        Image.asset(
                          'assets/images/vanielson-title-white-01.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        const SizedBox(height:16),
                        //const BioCard(description: 'Product strategy, product designer, software engineer, operations, and execution assassin.'),
                        Wrap(
                          children: [
                            Text(
                                'I\'m a product strategist and designer, software engineer, & an operations and execution assassin.', textAlign: TextAlign.center, style: primaryBodyText01(fontSize: 32, fontStyle: FontStyle.italic),
                            ),
                            Text(
                              'I use deez skillz to help folks build and prototype products and experiences.', textAlign: TextAlign.center, style: primaryBodyText01(fontSize: 32, color: Colors.yellow, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        const SizedBox(height:32),

                        /// Buttons
                        PrimaryButton(title: 'LinkedIn', onPressAction: buttonAction),
                        const SizedBox(height:8),
                        PrimaryButton(title: 'Github', onPressAction: buttonAction),
                        const SizedBox(height:8),
                        PrimaryButton(title: 'Twitter', onPressAction: buttonAction),
                        const SizedBox(height: 100),

                        /// First portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'DOJO', subtitle: 'A web3 fitness game',
                            cardIcon: 'kumite-icon-02.jpg',
                            backgroundImage: 'dojo_background_02.jpg',
                            cardShadowColor: Colors.red,
                            myRoleDescription: 'Strategy, Design, Engineering',
                            synopsisDescription: 'A shogun has hoarded all the food, water, and medical supplies that are starving all the creatures in the kingdom. Keep your symbiotic animal friend alive by defeating physical challenges to win and trade resources to survive.',
                            mediumDescription: 'Android, iOS, web3, Gaming, Fitness',
                            buttonOne: true,
                            buttonOneTitle: 'Watch Demo Video',
                            buttonOnePressAction: buttonAction,
                            buttonTwo: true,
                            buttonTwoTitle: 'Strategy and Design doc',
                            buttonTwoPressAction: buttonAction,
                            buttonThree: true,
                            buttonThreeTitle: 'Virtual Economy Design doc',
                            buttonThreePressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Sages', subtitle: 'Save your stories for eternity',
                            cardIcon: 'cherry-blossom-icon-02.jpg',
                            backgroundImage: 'tree-of-life-blossom-01.jpg',
                            cardShadowColor: Colors.lightBlue,
                            myRoleDescription: 'Strategy, Design, Engineering',
                            synopsisDescription: 'What if you could know your ancestors from 100+ years ago as well as you knew yourself? What if you could pass this onto your children and theirs for the next 1000 years?',
                            mediumDescription: 'In Development',
                            buttonOne: true,
                            buttonOneTitle: 'Strategy and Design doc',
                            buttonOnePressAction: buttonAction,
                          ),
                        ),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Pursuit', subtitle: 'Indoor cycling game',
                            cardIcon: 'pursuit-icon-01.jpg',
                            backgroundImage: 'pursuit-01.jpg',
                            cardShadowColor: Colors.white,
                            myRoleDescription: 'Patent holder, Product Mgmt, Strategy, Research, Service Design, Engr mgmt, Operations, Support',
                            synopsisDescription: '\$70M cycling group fitness game with 40+ bikes, a 20 foot screen, and pits the players in free for all and team games. SXSW Cannes winning xp. 70+ locations worldwide',
                            mediumDescription: 'Physical experience, fitness, .NET, Node',
                            buttonOne: true,
                            buttonOneTitle: 'Watch Demo Video',
                            buttonOnePressAction: buttonAction,
                            buttonTwo: true,
                            buttonTwoTitle: 'Strategy and Design doc',
                            buttonTwoPressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Touchless Check-in', subtitle: 'Luxury fitness resort xp',
                            cardIcon: 'eqx-logo.png',
                            backgroundImage: 'front-desk-01.jpg',
                            cardShadowColor: Colors.green,
                            myRoleDescription: 'Product manager, user research, conducting experiments, service design, engineering mgmt',
                            synopsisDescription: 'Access any location without fiddling with key fobs, cards, or scanners.',
                            mediumDescription: 'Bluetooth, iOS, Physical experience, Security',
                            buttonOne: true,
                            buttonOneTitle: 'Strategy and Design Doc',
                            buttonOnePressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Hospitality Service', subtitle: 'Luxury fitness resort xp',
                            cardIcon: 'eqx-logo.png',
                            backgroundImage: 'eqx-luxury-01.jpg',
                            cardShadowColor: Colors.deepOrange,
                            myRoleDescription: 'Product manager, user research, service design',
                            synopsisDescription: 'How might we improve the life of staff so they can spend more one on one time with the members.',
                            mediumDescription: 'iOS, Salesforce',
                            buttonOne: true,
                            buttonOneTitle: 'Strategy and Design Doc',
                            buttonOnePressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Mixtape Legends vol. 3', subtitle: 'NYC Love letter adventure',
                            cardIcon: 'mixtape-icon-01.jpg',
                            backgroundImage: 'mixtape-legends-01.jpg',
                            cardShadowColor: Colors.yellowAccent,
                            myRoleDescription: 'Creator',
                            synopsisDescription: 'During the pandemic, NYC became desolate because everyone was fleeing. I needed to fall back in love with NYC again so I created an experience that takes you across three iconic NYC locations to smoke, eat, and chill.',
                            mediumDescription: 'Self guided walking tour, Telegram bot, physical experience',
                            buttonOne: true,
                            buttonOneTitle: 'Watch video of the experience',
                            buttonOnePressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Short Films', subtitle: 'Films I made in NYC',
                            cardIcon: 'red-camera-01.jpg',
                            backgroundImage: 'irregardless-love-01.jpg',
                            cardShadowColor: Colors.blueAccent,
                            myRoleDescription: 'Director, Writer, Producer',
                            synopsisDescription: 'I spend my spare time creating short narratives that consist mostly of silly fictional stories and fun times. For a few of the films, I usually bring together crews of 3-20 folks, with 1 to 40 actors.',
                            mediumDescription: 'Film',
                            buttonOne: true,
                            buttonOneTitle: 'Watch my demo reel',
                            buttonOnePressAction: buttonAction,
                            buttonTwo: true,
                            buttonTwoTitle: 'Watch Irregardless Love',
                            buttonTwoPressAction: buttonAction,
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
