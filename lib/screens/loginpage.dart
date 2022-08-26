// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:login_page/screens/forgetpasswrd.dart';
import 'package:login_page/screens/home.dart';
import 'package:login_page/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);
  final _usernamecontroller = TextEditingController();
  final _passswordcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _username = 'sufiyan';
  final _password = '12345';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Image.asset('assets/images/login image.jpg'),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _usernamecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'USER NAME',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "empty username";
                    } else if (value != _username) {
                      return 'invalid username';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passswordcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'PASSWORD',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Empty password';
                    } else if (value != _password) {
                      return 'invalid Password';
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      checkLogin(context);
                    } else {
                      print('data empty');
                    }
                  },
                  icon: Icon(Icons.check),
                  label: Text('Login'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => Forgetpage(),
                      ),
                    );
                  },
                  child: Text('Forget password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final username = _usernamecontroller.text;
    final password = _passswordcontroller.text;

    if (username == _username && password == _password) {
      final _sharedPrefs = await SharedPreferences.getInstance();
      await _sharedPrefs.setBool(SAVE_KEY, true);
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(
          builder: (context) => Homescreen(),
        ),
      );
      //go to home page
    } else {}
  }
}
