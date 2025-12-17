import 'package:flutter/material.dart';

class ExchangeForm extends StatelessWidget {
  const ExchangeForm({
    Key? key,
    required this.personController,
    required this.amountController,
    required this.memoController,
  }) : super(key: key);

  final TextEditingController personController;
  final TextEditingController amountController;
  final TextEditingController memoController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            controller: personController,
            decoration: const InputDecoration(labelText: "Person"),
          ),
          TextFormField(
            controller: amountController,
            decoration: const InputDecoration(labelText: "Amount"),
            keyboardType: TextInputType.number,
          ),
          TextFormField(
            controller: memoController,
            decoration: const InputDecoration(labelText: "Memo"),
          ),
        ],
      ),
    );
  }
}
