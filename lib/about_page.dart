import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            child: Text(
              "Flat Button to Home",
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.green,
            onPressed: () {
              Navigator.pushNamed(context, 'exercises');
            },
            child: Text(
              "Flat Button to Exercises",
            ),
          ),
        ),
      ],
    );
  }
}
