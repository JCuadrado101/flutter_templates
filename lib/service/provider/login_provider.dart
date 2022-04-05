import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  String? _sessionToken;

  String? get sessionToken => _sessionToken;

  void setSessionToken(String? token) {
    _sessionToken = token;
    notifyListeners();
  }
}
