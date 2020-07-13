import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'locale/app_localization.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  AppLocalizationDelegate _localeOverrideDelegate =
      AppLocalizationDelegate(Locale('ru', 'RU'));

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          _localeOverrideDelegate
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('de', 'DE'),
          const Locale('ru', 'RU')
        ],
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
//          '/': (context) => Sample1(),
//      '/': (context) => FluTubeExample(),
//      '/': (context) => WelcomePage(),
//          '/myneck': (context) => MyNeck(),
//          '/welcome': (context) => WelcomePage(),
//          '/exercises': (context) => ExerciseList(),
//          '/about': (context) => AboutPage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text(AppLocalization.of(context).heyWorld),
          ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: RaisedButton(
              onPressed: () {
                setState(() {
                  AppLocalization.load(Locale('en', 'US'));
                });
              },
              child: Text('ENGLISH'),
            ),
            trailing: RaisedButton(
              onPressed: () {
                setState(() {
                  AppLocalization.load(Locale('ru', '`RU`'));
                });
              },
              child: Text('GERMAN'),
            ),
          ),
          Text(
            AppLocalization.of(context).heyWorld,
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

class Sample1 extends StatefulWidget {
  @override
  _Sample1State createState() => _Sample1State();
}

class _Sample1State extends State<Sample1> {
  final List<String> pages = <String>[
    'myback',
    'myneck',
    'myabdomen',
    'mychest',
    'mybuttock',
    'mylumbar',
    'myarms',
    'mylegs',
  ];

  final List<String> entries = <String>[
    'Спина',
    'Шея',
    'Живот',
    'Грудь',
    'Ягодицы',
    'Поясница',
    'Руки',
    'Ноги',
  ];

  final List<int> colorCodes = <int>[
    050,
    100,
    200,
    100,
    050,
    100,
    200,
    100,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(),
        appBar: MyCustomAppBar(
          height: 150,
          defaultAppBar: true,
        ),
        body: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
//            FlutterLogo(
//              size: MediaQuery.of(context).size.width / 2,
//            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
//              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return FlatButton(
                  onPressed: () {
//                      Navigator.pop(context);
//                          setState(() {
//                            _ExerciseListState();
//                          });
                    Navigator.push(context, MaterialPageRoute<void>(
                      builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(title: Text('${entries[index]}')),
                          body: Center(
                            child: FlatButton(
                              child: Text('POP'),
                              onPressed: () {
//                                  Navigator.pushNamed(context, '/');
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        );
                      },
                    ));
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Text(
                    '${entries[index]}',
//                      textAlign: TextAlign.center,

                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      letterSpacing: 5,
                      height: 3,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 1
                        ..color = Colors.blue[700],
                    ),
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: RaisedButton(
                    onPressed: () {
                      setState(() {
                        AppLocalization.load(Locale('en', 'US'));
                      });
                    },
                    child: Text('ENGLISH'),
                  ),
                  trailing: RaisedButton(
                    onPressed: () {
                      setState(() {
                        AppLocalization.load(Locale('ru', 'RU'));
                      });
                    },
                    child: Text('GERMAN'),
                  ),
                ),
                Text(
                  AppLocalization.of(context).heyWorld,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool defaultAppBar;

  const MyCustomAppBar({
    Key key,
    @required this.height,
    this.defaultAppBar = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: defaultAppBar
                ? AppBar(
                    title: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                    actions: [
                      IconButton(
                        icon: Icon(Icons.verified_user),
                        onPressed: () => null,
                      ),
                    ],
                  )
                : _customAppBar(context),
          ),
        ),
      ],
    );
  }

  Widget _customAppBar(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: EdgeInsets.all(5),
      child: Row(children: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        Container(
          color: Colors.white,
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              contentPadding: EdgeInsets.all(10),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.verified_user),
          onPressed: () => null,
        ),
      ]),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
