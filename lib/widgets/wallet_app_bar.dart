import 'package:flutter/material.dart';
import 'package:mutual_wallet/widgets/shared/hours_formatter.dart';
import 'package:mutual_wallet/models/user_model.dart';
import 'package:provider/provider.dart';

class WalletAppBar extends StatefulWidget implements PreferredSizeWidget {
  const WalletAppBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WalletAppBarState();
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}

class _WalletAppBarState extends State<WalletAppBar> {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserModel>(builder: (context, user, child) {
      return AppBar(
        title: Row(
          children: [
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(flex: 10),
            Text(
              HoursFormatter.formatDecimal(user.balance),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Text(" HR"),
          ],
        ),
      );
    });
  }
}
