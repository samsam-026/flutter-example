import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[Text('Card $index')],
    ));
  }
}
