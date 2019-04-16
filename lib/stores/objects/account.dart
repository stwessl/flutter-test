import 'package:mobx/mobx.dart';

part 'account.g.dart';

class Account = _Account with _$Account;
 

abstract class _Account implements Store {
  @observable 
  String first_name;
  @observable 
  String last_name;

  @computed get full_name => "$first_name, $last_name";

  @action
  void update_name(String first_name, String last_name) {
    this.first_name = first_name;
    this.last_name = last_name;
  }
}