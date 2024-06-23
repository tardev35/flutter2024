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
              title: const Text('Kin Plen Snack'),
              titleTextStyle: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w600,
                  fontSize: 22),
              backgroundColor: const Color.fromARGB(255, 6, 208, 77),
              actions: <Widget>[
                PopupMenuButton<String>(
                  onSelected: (String result) {
                    print('Selected $result');
                  },
                  itemBuilder: (BuildContext context) => [
                    const PopupMenuItem(
                      value: 'Setting',
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.settings),
                          SizedBox(width: 10),
                          Text('Settiing'),
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Profile',
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.people),
                          SizedBox(width: 10),
                          Text('Profile')
                        ],
                      ),
                    ),
                    const PopupMenuItem(
                      value: 'Logout',
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.logout),
                          SizedBox(width: 10),
                          Text('Logout')
                        ],
                      ),
                    )
                  ],
                )
              ]),
          body: const Center(
            child: Text(
              'Wellcome Flutter',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 204, 48, 0)),
            ),
          ),
        ));
  }
}
