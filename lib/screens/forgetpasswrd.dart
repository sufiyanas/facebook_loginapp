import 'package:flutter/material.dart';

class Forgetpage extends StatelessWidget {
  const Forgetpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Forget PassWord',
        ),
      ),
      body: const Center(
        child: Text('''UsrName is : sufiyan\n
        Password is :12345'''),
      ),
    );
  }
}
