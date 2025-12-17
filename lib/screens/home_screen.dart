import 'package:flutter/material.dart';
import 'package:mutual_wallet/screens/new_exchange_screen.dart';
import 'package:mutual_wallet/widgets/exchange_button.dart';
import 'package:mutual_wallet/widgets/home/home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: HomeView(),
      ),
      floatingActionButton: ExchangeButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const NewExchangeScreen();
            }),
          );
        },
      ),
    );
  }
}
