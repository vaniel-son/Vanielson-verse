import 'package:flutter/material.dart';
import 'package:vanielson/widgets/portfolio_card.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Vanielson-verse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height * 1),
          child: Stack(
            children: [
              Opacity(
                opacity: .8,
                //child: VideoFullScreen(videoURL: videoURLTemp, videoConfiguration: 5),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/dojo-bedroom-03.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              Center(
                child: SizedBox(
                  width: 400,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height:48),
                      Text(
                        'Vanielson',
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height:16),
                      const Text(
                          'Product strategy, product designer, software engineer, operations, and execution assassin.', textAlign: TextAlign.center,
                      ),
                      const SizedBox(height:16),

                      /// Buttons

                      SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          ),
                          onPressed: () {
                            print('tap');
                          },
                          child: const Text('LinkedIn'),
                        ),
                      ),
                      const SizedBox(height:8),
                      SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          ),
                          onPressed: () {
                            print('tap');
                          },
                          child: const Text('Github'),
                        ),
                      ),
                      const SizedBox(height:8),
                      SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                          ),
                          onPressed: () {
                            print('tap');
                          },
                          child: const Text('Twitter'),
                        ),
                      ),

                      const SizedBox(height: 100),

                      /// First portfolio container
                      const SizedBox(
                          width: 400,
                          child: PortfolioCard(title: 'Dojo', subtitle: 'A web3 fitness game', myRole: 'Product Manager')),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/ // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
