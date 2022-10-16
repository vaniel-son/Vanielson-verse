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
                    image: AssetImage('assets/images/cloud_house_04.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              color: primaryBackgroundColor2.withOpacity(.7),
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width),
              height: (MediaQuery.of(context).size.height * 3),
              child: SingleChildScrollView(
                child: Center(
                  child: SizedBox(
                    width: 425,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height:48),
                        const CircleAvatar(
                          radius: 75,
                          backgroundImage: AssetImage('assets/images/vanielson_mask_01.jpg'),
                        ),
                        verticalRiser(context: context, multiplier: 1),
                        Image.asset(
                          'assets/images/vanielson-title-white-01.png',
                          fit: BoxFit.cover,
                          height: 50,
                        ),
                        const SizedBox(height:16),
                        Wrap(
                          children: [
                            Text(
                              'I help folks build, manage, and prototype products and experiences.', textAlign: TextAlign.center, style: primaryBodyText01(fontSize: 32, color: Colors.yellow, fontStyle: FontStyle.italic),
                            ),
                            Text(
                                'I\'m a product strategist and designer, software engineer, & an operations and execution assassin.', textAlign: TextAlign.center, style: primaryBodyText01(fontSize: 32, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        const SizedBox(height:32),

                        /// Buttons
                        const PrimaryButtonOpenURL(title: 'LinkedIn', url: 'https://www.linkedin.com/in/van-nguyen-5ba94214/'),
                        const SizedBox(height:8),
                        const PrimaryButtonOpenURL(title: 'Github', url: 'https://github.com/vaniel-son'),
                        const SizedBox(height:8),
                        const PrimaryButtonOpenURL(title: 'Twitter', url: 'https://twitter.com/vanielsonnn'),
                        const SizedBox(height: 100),

                        /// First portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Kumite', subtitle: 'A web3 fitness game',
                            cardIcon: 'kumite-icon-02.jpg',
                            backgroundImage: 'dojo_background_02.jpg',
                            cardShadowColor: Colors.red,
                            myRoleDescription: 'Strategy, Design, Engineering',
                            synopsisDescription: 'A shogun warlord hoards all the food, water, and medical supplies that starves all the creatures in the kingdom. Keep your symbiotic animal companion alive by defeating physical challenges to win and trade resources to survive.',
                            mediumDescription: 'Android, iOS, web3, Gaming, Fitness',
                            buttonOne: true,
                            buttonOneTitle: 'Visit website',
                            buttonOneURL: 'https://kumite.my-dojo.com/',
                            buttonTwo: true,
                            buttonTwoTitle: 'Strategy and Design doc',
                            buttonTwoURL: 'https://vanielsons-organization.gitbook.io/dojo-strategy/kumite-a-web3-fitness-game',
                            buttonThree: true,
                            buttonThreeTitle: 'Virtual Economy Design doc',
                            buttonThreeURL: 'https://vanielsons-organization.gitbook.io/kumite-virtual-economy-design/',
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
                            synopsisDescription: 'What if you could know your ancestors from 100+ years ago as well as you knew yourself? What if you could pass your story to your children and theirs for the next 1000 years?',
                            mediumDescription: 'In Development',
                            buttonOne: true,
                            buttonOneTitle: 'Strategy and Design doc',
                            buttonOneURL: 'https://vanielsons-organization.gitbook.io/sages-save-stories-for-eternity/',
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
                            buttonOneTitle: 'Watch Sizzle Video',
                            buttonOneURL: 'https://vimeo.com/207492328',
                            buttonTwo: true,
                            buttonTwoTitle: 'Strategy and Design doc',
                            buttonTwoURL: 'https://vanielsons-organization.gitbook.io/pursuit-indoor-cycling-game/',
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
                            buttonOneURL: 'https://vanielsons-organization.gitbook.io/touchless-check-in/',
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
                            buttonOneURL: 'https://vanielsons-organization.gitbook.io/luxury-hospitality-service/',
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
                            buttonOneURL: 'https://vimeo.com/454516305',
                          ),
                        ),
                        verticalRiser(context: context, multiplier: 1),

                        /// portfolio container
                        SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Short Films', subtitle: 'Shot in NYC',
                            cardIcon: 'red-camera-01.jpg',
                            backgroundImage: 'irregardless-love-01.jpg',
                            cardShadowColor: Colors.blueAccent,
                            myRoleDescription: 'Director, Writer, Producer',
                            synopsisDescription: 'I spend my spare time creating short narratives that consist mostly of silly fictional stories and fun times. I usually bring together crews of 3-20 folks, with 1 to 40 actors.',
                            mediumDescription: 'Film',
                            buttonOne: true,
                            buttonOneTitle: 'Watch my demo reel',
                            buttonOneURL: 'https://vimeo.com/74595325',
                            buttonTwo: true,
                            buttonTwoTitle: 'Watch Irregardless Love',
                            buttonTwoURL: 'https://vimeo.com/60785065',
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
