import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange.dart';

class ExchangeIconFactory {
  static Icon getIcon(ExchangeType type) {
    return type == ExchangeType.send
        ? const Icon(Icons.north_east, color: Colors.orange)
        : const Icon(Icons.south_west, color: Colors.white);
  }
}
