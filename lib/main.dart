import 'package:flutter/material.dart';
import 'package:mutual_wallet/models/exchange_model.dart';
import 'package:mutual_wallet/screens/home_screen.dart';
import 'package:mutual_wallet/theme_factory.dart';
import 'package:provider/provider.dart';

import 'models/user_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => UserModel()),
      ChangeNotifierProvider(create: (context) => ExchangeModel())
    ],
    child: const MutualCreditApp(),
  ));
}

class MutualCreditApp extends StatelessWidget {
  const MutualCreditApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mutual Wallet',
      theme: ThemeFactory.get(),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
