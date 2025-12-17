import 'package:flutter/material.dart';

class ExchangeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ExchangeButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.add, size: 32),
    );
  }
}
