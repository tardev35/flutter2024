import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello Row'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Sign in To My App',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Username'),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 184, 199, 224),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 98, 123, 182),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(end: 10),
                    child: Icon(Icons.arrow_right),
                  ),
                ),
                style: TextStyle(color: Color.fromARGB(255, 35, 33, 33)),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Password'),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 184, 199, 224),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.key_off,
                    color: Color.fromARGB(255, 98, 123, 182),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                  child: ElevatedButton.icon(
                icon: const Icon(Icons.login),
                onPressed: () {
                  print('Sign In Are Pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 15,
                    bottom: 15,
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                ),
                label: const Text('Sign In'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
