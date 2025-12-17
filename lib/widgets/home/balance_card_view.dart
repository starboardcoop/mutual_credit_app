import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/user_model.dart';
import 'package:mutual_wallet/widgets/home/balance_card.dart';
import 'package:provider/provider.dart';

class BalanceCardView extends StatelessWidget {
  const BalanceCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(
      builder: (context, user, child) {
        return BalanceCard(balance: user.balance);
      },
    );
  }
}
