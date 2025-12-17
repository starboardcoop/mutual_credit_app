import 'package:flutter/material.dart';
import 'package:mutual_wallet/api/exchange.dart';
import 'package:mutual_wallet/helpers/exchange_icon_factory.dart';
import 'package:mutual_wallet/hours_formatter.dart';

class ExchangeListItem extends StatelessWidget {
  final Exchange exchange;

  const ExchangeListItem({
    Key? key,
    required this.exchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ExchangeIconFactory(context: context).getIcon(exchange.type),
        title: Text(exchange.name),
        trailing: Text(HoursFormatter.formatDecimal(exchange.amount)),
      ),
    );
  }
}
