import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class AuthenticatedUser {
  String id;
  String displayName;
  String email;
  String phoneNumber;
  bool isEmailVerified;
  String photoUrl;

  AuthenticatedUser({this.id, this.displayName, this.email, this.phoneNumber, this.isEmailVerified, this.photoUrl});

  Map<String, dynamic> toJson() {
    return {
      'id': this.id,
      'displayName': this.displayName,
      'email': this.email,
      'phoneNumber': this.phoneNumber,
      'isEmailVerified': this.isEmailVerified,
      'photoUrl': this.photoUrl,
    };
  }
}

class AuthenticatedUserState extends ChangeNotifier {
  AuthenticatedUser _authenticatedUser;
  bool _initializing = true;

  AuthenticatedUserState() {
    this.setup();
  }

  bool get isAuthenticated => this._authenticatedUser.id.isEmpty ? false : true;

  bool get isInitializing => this._initializing;

  AuthenticatedUser get authenticatedUser => this._authenticatedUser;

  void setup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String authenticatedUserJson = prefs.getString('authenticatedUser');

    if (authenticatedUserJson != null && authenticatedUserJson.isNotEmpty) {
      Map<String, dynamic> authenticatedUserMap = json.decode(authenticatedUserJson);
      this._authenticatedUser = AuthenticatedUser(
        id: authenticatedUserMap['id'],
        displayName: authenticatedUserMap['displayName'],
        email: authenticatedUserMap['email'],
        phoneNumber: authenticatedUserMap['authenticatedUserMap'],
        isEmailVerified: authenticatedUserMap['isEmailVerified'],
        photoUrl: authenticatedUserMap['photoUrl'],
      );
    } else {
      this._authenticatedUser = AuthenticatedUser();
    }

    this._initializing = false;
    notifyListeners();
  }

  void setAuthenticatedUser(AuthenticatedUser user) async {
    this._authenticatedUser = user;
    notifyListeners();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('authenticatedUser', json.encode(this._authenticatedUser.toJson()));
  }
}
