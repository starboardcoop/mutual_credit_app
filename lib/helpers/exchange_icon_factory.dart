import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange.dart';

class ExchangeIconFactory {
  final BuildContext context;

  const ExchangeIconFactory({required this.context});

  Icon getIcon(ExchangeType type) {
    final theme = Theme.of(context);
    return type == ExchangeType.send
        ? Icon(Icons.north_east, color: theme.colorScheme.primary)
        : Icon(Icons.south_west, color: theme.colorScheme.onSurface);
  }
}
