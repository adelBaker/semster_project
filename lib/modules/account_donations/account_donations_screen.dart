import 'package:flutter/material.dart';

class AccountDonationsScreen extends StatelessWidget {
  const AccountDonationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("My Donations Screen ",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
      ),
    );
  }
}
