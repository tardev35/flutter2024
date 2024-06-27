import 'package:flutter/material.dart';

class ListviewExample extends StatelessWidget {
  const ListviewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListviewPage(),
    );
  }
}

class ListviewPage extends StatelessWidget {
  const ListviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List View Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[500],
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(1),
        children: const <Widget>[
          ListTile(
            title: Text('Battery Full'),
            subtitle: Text('The battery is full.'),
            leading: Icon(Icons.battery_charging_full),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            title: Text('Anchor'),
            subtitle: Text('Lower the anchor.'),
            leading: Icon(Icons.anchor),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            title: Text('Access Time'),
            subtitle: Text('Time To Go'),
            leading: Icon(Icons.access_time),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            title: Text('Arrow Forward'),
            subtitle: Text('Going Out'),
            leading: Icon(Icons.arrow_forward_sharp),
            trailing: Icon(Icons.more_vert),
          ),
          ListTile(
            title: Text('Flutter UI'),
            subtitle: Text('Lern Flutter UI'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/fluuter-icon.png'),
            ),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Vue.Js Design'),
            subtitle: Text('Lern Vue3 UI'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/vue-icon.png'),
            ),
            trailing: Icon(Icons.star),
          ),
          ListTile(
            title: Text('Next.Js Design'),
            subtitle: Text('Lern Next14 UI'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/next-icon.png'),
            ),
            trailing: Icon(Icons.star),
          ),
        ],
      ),
    );
  }
}
