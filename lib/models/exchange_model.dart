import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mutual_wallet/api/exchange.dart';

class ExchangeModel extends ChangeNotifier {
  static final _exchanges = <Exchange>[];

  UnmodifiableListView<Exchange> get exchanges =>
      UnmodifiableListView(_exchanges);

  void add(Exchange exchange) {
    _exchanges.add(exchange);
    notifyListeners();
  }
}
