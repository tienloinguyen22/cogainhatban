import 'package:flutter/material.dart';

class AuthenticatedUser {
  String id;
  String displayName;
  String email;
  String phoneNumber;
  bool isEmailVerified;
  String photoUrl;

  AuthenticatedUser({this.id, this.displayName, this.email, this.phoneNumber, this.isEmailVerified, this.photoUrl});
}

class AuthenticatedUserState extends ChangeNotifier {
  AuthenticatedUser _authenticatedUser = AuthenticatedUser();

  bool get isAuthenticated => this._authenticatedUser.id.isEmpty ? false : true;

  AuthenticatedUser get authenticatedUser => this._authenticatedUser;

  void setAuthenticatedUser(AuthenticatedUser user) {
    this._authenticatedUser = user;
    notifyListeners();
  }
}
