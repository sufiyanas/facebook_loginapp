import 'package:flutter/material.dart';
import 'package:login_page/screens/home.dart';
import 'package:login_page/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY = 'UserLoggedIn';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    checkUserLogigin();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: 150,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (ctx) => LogIn(),
    ));
  }

  Future<void> checkUserLogigin() async {
    final _sharedprefs = await SharedPreferences.getInstance();
    // _sharedprefs.setBool(SAVE_KEY, true);
    final _userLoggedIn = _sharedprefs.getBool(SAVE_KEY);
    if (_userLoggedIn == null || _userLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => Homescreen()));
    }
  }
}
