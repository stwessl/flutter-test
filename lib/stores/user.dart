import 'package:mobx/mobx.dart';
import 'dart:async';
import './objects/counter.dart';
import './objects/account.dart';
class User {
  Counter counter;
  Account account;
  User(){
    counter = new Counter();
    account = new Account();
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {this.counter.increment();});
    account.first_name = "Stephan";
    account.last_name = "Wessels";

    Timer namechange = new Timer(Duration(seconds: 5), () {this.account.update_name("Awesome", "bastard");});
  }
}

final user = new User(); 