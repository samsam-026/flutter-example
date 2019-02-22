import 'package:flutter/material.dart';
import '../secondPage.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Text('Card $index'),
        FlatButton(
            child: Text("Press Me"),
            onPressed: () {
              /** Push a named route to the stcak, which does not require data to be  passed */
              // Navigator.pushNamed(context, "/a");

              /** Create a new page and push it to stack each time the button is pressed */
              // Navigator.push(context, MaterialPageRoute<void>(
              //   builder: (BuildContext context) {
              //     return Scaffold(
              //       appBar: AppBar(title: Text('My Page')),
              //       body: Center(
              //         child: FlatButton(
              //           child: Text('POP'),
              //           onPressed: () {
              //             Navigator.pop(context);
              //           },
              //         ),
              //       ),
              //     );
              //   },
              // ));

              /** Push a new page while passing data to it */
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(title: index)));
            }),
      ],
    ));
  }
}
