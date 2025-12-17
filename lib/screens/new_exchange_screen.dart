import 'package:flutter/material.dart';
import 'package:mutual_wallet/controllers/exchange.dart';
import 'package:mutual_wallet/controllers/exchange_controller.dart';
import 'package:mutual_wallet/controllers/exchange_form_controller.dart';
import 'package:mutual_wallet/widgets/exchange_form.dart';

class NewExchangeScreen extends StatefulWidget {
  const NewExchangeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewExchangeScreenState();
  }
}

class _NewExchangeScreenState extends State<NewExchangeScreen> {
  final _formController = ExchangeFormController();

  @override
  Widget build(BuildContext context) {
    final controller = ExchangeController(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Exchange"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ExchangeForm(controller: _formController),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: () => submit(controller, _formController.send_exchange),
            label: const Text("SEND"),
            icon: const Icon(Icons.north_east),
            backgroundColor: Colors.white,
            foregroundColor: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: null,
            onPressed: () =>
                submit(controller, _formController.request_exchange),
            label: const Text("REQUEST"),
            icon: const Icon(Icons.south_west),
          ),
        ],
      ),
    );
  }

  void submit(ExchangeController controller, Exchange exchange) {
    controller.process(exchange);
    Navigator.pop(context);
  }
}
