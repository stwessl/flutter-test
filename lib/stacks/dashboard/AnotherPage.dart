import 'package:flutter/material.dart';
import 'package:fluttertest/stores/user.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Observer(builder: (_) => Text("${user.counter.value} Counted ${user.account.full_name}"),),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Back'),
          onPressed: () => {Navigator.pop(context)},
        ),
      ),
    );
  }
}
