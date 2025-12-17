import 'package:flutter/material.dart';
import 'package:mutual_wallet/widgets/shared/hours_formatter.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key, required this.balance}) : super(key: key);

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Hours'),
            Text(
              HoursFormatter.format(balance),
              textAlign: TextAlign.right,
              style: const TextStyle(fontSize: 48.0),
            ),
          ],
        ),
      ),
    );
  }
}
