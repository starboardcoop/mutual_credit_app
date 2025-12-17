import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  static const String _name = "Alice";
  static double _balance = 0;

  String get name => _name;

  double get balance => _balance;

  void debit(double amount) {
    _balance -= amount;
    notifyListeners();
  }

  void credit(double amount) {
    _balance += amount;
    notifyListeners();
  }
}
