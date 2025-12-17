import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:provider/provider.dart';

import 'exchange_list_item.dart';

class ExchangeListView extends StatelessWidget {
  const ExchangeListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ExchangeModel>(
      builder: (context, model, child) {
        if (model.exchanges.isEmpty) {
          return const Text(
            'No recent exchanges.',
            textAlign: TextAlign.center,
          );
        }

        return ListView.builder(
          itemCount: model.exchanges.length,
          itemBuilder: (_, i) => ExchangeListItem(
            exchange: model.exchanges[i],
          ),
          shrinkWrap: true,
        );
      },
    );
  }
}
