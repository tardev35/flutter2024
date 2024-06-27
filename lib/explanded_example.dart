import 'package:flutter/material.dart';

class ExplandedExample extends StatelessWidget {
  const ExplandedExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExplandedPage(),
    );
  }
}

class ExplandedPage extends StatelessWidget {
  const ExplandedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Explanded App',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green[800],
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.red[800],
              child: const Text('Fix Height Container 1'),
            ),
            Expanded(
              child: Container(
                color: Colors.purple[300],
                child: const Text('Expanded Container 1 '),
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.green[400],
                child: const Text('Expanded Container 1 '),
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.blue[400],
              child: const Text('Fix Height Container 2'),
            )
          ],
        ));
  }
}
