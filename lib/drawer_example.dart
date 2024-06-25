import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerPage(),
    );
  }
}

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Application'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Colors.green,
            //   ),
            //   child: Text(
            //     'My Header',
            //     style: TextStyle(color: Colors.white, fontSize: 25),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1712847333453-740d9665aa5d?q=80&w=800&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
              ),
              accountEmail: Text('headerdrawe@gmail.com'),
              accountName: Text(
                'Niran Tha',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
              ),
              decoration:
                  BoxDecoration(color: Color.fromRGBO(1, 181, 70, 0.833)),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.people_rounded),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
            ListTile(
              leading: Icon(Icons.currency_bitcoin),
              title: Text('Payment'),
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Order'),
            )
          ],
        ),
      ),
    );
  }
}
