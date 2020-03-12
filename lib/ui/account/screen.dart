import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  final String id;

  const AccountScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Account Screen $id'.trim())),
      body: Container(color: Colors.yellow.shade100),
    );
  }
}
