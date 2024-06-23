import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: Scaffold(
          appBar: AppBar(
              title: const Text('My App Flutter'),
              backgroundColor: Color.fromARGB(255, 6, 208, 77),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    print('Notification icon pressed');
                  },
                  icon: const Icon(Icons.notifications),
                ),
                IconButton(
                  onPressed: () {
                    print('Setting Icon');
                  },
                  icon: const Icon(Icons.search_outlined),
                ),
              ]),
          body: const Center(
            child: Text('Wellcome Flutter'),
          ),
        ));
  }
}
