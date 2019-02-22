import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  SecondPage({@required this.title});

  final title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card No. $title'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Back To HomeScreen'),
            color: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onPressed: () => Navigator.pop(context)),
      ),
    );
  }
}
