import 'package:flutter/material.dart';
import 'package:mutual_wallet/widgets/shared/spacing.dart';

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
      key: key,
      autovalidateMode: AutovalidateMode.onUnfocus,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        spacing: Spacing.normal,
        children: [
          TextFormField(
            controller: personController,
            decoration: const InputDecoration(
              labelText: "Person",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Person required';
              }

              return null;
            },
          ),
          TextFormField(
            controller: amountController,
            decoration: const InputDecoration(
              labelText: "Hours",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Hours required';
              }

              return null;
            },
          ),
          TextFormField(
            controller: memoController,
            decoration: const InputDecoration(
              labelText: "Memo",
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
