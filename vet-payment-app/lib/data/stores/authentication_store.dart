import 'dart:async';

import 'package:app/data/services/user_data_service.dart';
import 'package:app/models/visit.dart';
import 'package:mobx/mobx.dart';

class AuthenticationStore with Store {
  AuthenticationStore._();

  static final AuthenticationStore _instance = AuthenticationStore._();

  static AuthenticationStore get instance => _instance;

  StreamController<bool> authenticationChangedController =
      StreamController<bool>();

  @observable
  bool isAuthenticated = false;

  @observable
  String email = "andrew@gmail.com";

  @observable
  List<Visit> visits = [];

  @action
  Future<void> login() async {
    try {
      visits = await UserDataService().getUser(email);
      if(visits.isNotEmpty){
        isAuthenticated = true;
        authenticationChangedController.add(isAuthenticated);
      }
    } on Exception {
      rethrow;
    }
  }

  @action
  void logout() {
    isAuthenticated = false;
    authenticationChangedController.add(isAuthenticated);
  }
}
