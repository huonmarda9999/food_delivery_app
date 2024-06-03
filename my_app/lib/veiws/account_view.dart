import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
      body: Center(
        child: Text(
          'Account Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
