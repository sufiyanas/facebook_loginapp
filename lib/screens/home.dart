import 'package:flutter/material.dart';

import 'package:login_page/screens/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Facebook'),
          actions: [
            IconButton(
              onPressed: () {
                signout(context);
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: ListView(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'dqsalmaan',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/dulkersalman.jpg'),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.comment)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'mammootty',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/mammutty.webp'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.comment)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'cristiano',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/cr7.jpg'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.favorite)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.comment)),
                    const SizedBox(
                      width: 80,
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }

  signout(BuildContext ctx) async {
    final _sharedpref = await SharedPreferences.getInstance();
    await _sharedpref.clear();

    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => LogIn()), (route) => false);
  }
}
