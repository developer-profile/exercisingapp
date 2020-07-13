import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, 'about');
            },
            child: Text(
              "Page About Flat Button About",
            ),
          ),
        ),
        Expanded(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            child: Text(
              "Page About Flat Button Home",
            ),
          ),
        ),
      ],
    );
  }
}
