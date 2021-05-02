import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.teal.shade900,
          appBar: AppBar(
            title: Text('Magic App'),
            backgroundColor: Colors.teal.shade300,
          ),
          body: MargicApp(),
        ),
      ),
    );


class MargicApp extends StatefulWidget {
  @override
  _MargicAppState createState() => _MargicAppState();
}

class _MargicAppState extends State<MargicApp> {

  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  imageNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$imageNumber.png'),
            ),
          )
        ]
      ),
    );
  }
}

