import 'package:flutter/material.dart';
import 'package:mutual_wallet/api/exchange.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:mutual_wallet/models/user_model.dart';
import 'package:mutual_wallet/widgets/new_exchange/exchange_form.dart';
import 'package:mutual_wallet/widgets/shared/spacing.dart';
import 'package:provider/provider.dart';

class NewExchangeScreen extends StatefulWidget {
  const NewExchangeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewExchangeScreenState();
  }
}

class _NewExchangeScreenState extends State<NewExchangeScreen> {
  final formKey = GlobalKey<FormState>();

  final person = TextEditingController();
  final amount = TextEditingController(text: '1');
  final memo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Exchange"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(Spacing.normal),
        child: ExchangeForm(
          key: formKey,
          personController: person,
          amountController: amount,
          memoController: memo,
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: Spacing.normal,
        children: [
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: () => submit(ExchangeType.send),
            label: const Text("SEND"),
            icon: const Icon(Icons.north_east),
            backgroundColor: Colors.white,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: () => submit(ExchangeType.request),
            label: const Text("REQUEST"),
            icon: const Icon(Icons.south_west),
          ),
        ],
      ),
    );
  }

  void submit(ExchangeType type) {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      return;
    }

    final exchangeAmount = double.parse(amount.text);
    final exchange = Exchange(type, person.text, exchangeAmount, memo.text);

    final user = Provider.of<UserModel>(context, listen: false);
    final exchanges = Provider.of<ExchangeModel>(context, listen: false);

    type == ExchangeType.request
        ? user.credit(exchangeAmount)
        : user.debit(exchangeAmount);

    exchanges.add(exchange);

    Navigator.pop(context);
  }
}
