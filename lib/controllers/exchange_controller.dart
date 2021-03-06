import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:mutual_wallet/models/user_model.dart';
import 'package:provider/provider.dart';

import 'exchange.dart';

class ExchangeController {
  late final BuildContext _context;

  ExchangeController(BuildContext context) {
    _context = context;
  }

  UserModel get user => Provider.of<UserModel>(_context, listen: false);

  ExchangeModel get exchangeModel =>
      Provider.of<ExchangeModel>(_context, listen: false);

  void process(Exchange exchange) {
    log(exchange);
    exchange.type == ExchangeType.send
        ? user.debit(exchange.amount)
        : user.credit(exchange.amount);

    exchangeModel.add(exchange);
  }

  void log(Exchange exchange) {
    if (kDebugMode) {
      print(
          "${exchange.type.name.toUpperCase()} ${exchange.name} ${exchange.amount} ${exchange.memo}");
    }
  }
}
