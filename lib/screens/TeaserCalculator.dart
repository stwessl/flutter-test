import 'package:flutter/material.dart';

class TeaserCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.blueGrey),
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      'I spend:',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Slider(
                      divisions: 100,
                      max: 50000,
                      value: 30000,
                      activeColor: Colors.red,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
