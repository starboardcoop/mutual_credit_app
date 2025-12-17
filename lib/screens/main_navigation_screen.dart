import 'package:flutter/material.dart';
import 'package:mutual_wallet/screens/new_exchange_screen.dart';
import 'package:mutual_wallet/widgets/exchange_button.dart';
import 'package:mutual_wallet/widgets/home/home_view.dart';
import 'package:mutual_wallet/widgets/shared/spacing.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int viewIndex = 0;
  final views = [const HomeView(), const HomeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Padding(
        padding: EdgeInsets.all(Spacing.normal),
        child: HomeView(),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: viewIndex,
        onDestinationSelected: (value) {
          setState(() {
            viewIndex = value;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
