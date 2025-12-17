import 'package:flutter/material.dart';
import 'package:mutual_wallet/widgets/home/balance_card_view.dart';
import 'package:mutual_wallet/widgets/home/exchange_list_view.dart';
import 'package:mutual_wallet/widgets/shared/spacing.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: Spacing.normal,
      children: [
        BalanceCardView(),
        ExchangeListView(),
      ],
    );
  }
}
