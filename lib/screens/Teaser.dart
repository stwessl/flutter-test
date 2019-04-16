import 'package:flutter/material.dart';

class Teaser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/loadingLogo.png'),
            RaisedButton(
              child: Text('See more'),
              onPressed: () => Navigator.of(context).pushNamed('/teaserCalculator'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              textTheme: ButtonTextTheme.primary,
            )
          ],
        ),
      ),
    );
  }
}
