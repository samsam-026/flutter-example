import 'package:flutter/material.dart';
import '../task.dart';

class CustomCard extends StatelessWidget {
  CustomCard({@required this.title, this.description});

  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            padding: const EdgeInsets.only(top: 5.0),
            child: Column(
              children: <Widget>[
                Text(title),
                FlatButton(
                    child: Text("See More"),
                    onPressed: () {
                      /** Push a named route to the stcak, which does not require data to be  passed */
                      // Navigator.pushNamed(context, "/task");

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
                              builder: (context) => TaskPage(
                                  title: title, description: description)));
                    }),
              ],
            )));
  }
}
