import 'package:flutter/material.dart';

class TabExample extends StatelessWidget {
  const TabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabPage(),
    );
  }
}

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Tab App'),
            backgroundColor: Colors.red,
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 214, 208, 185),
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(Icons.home, color: Colors.white),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.star, color: Colors.white),
                  text: 'Payment',
                ),
                Tab(
                  icon: Icon(Icons.settings, color: Colors.white),
                  text: 'Setinng',
                )
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: const TabBarView(
              children: [
                HomeTab(),
                PaymentTab(),
                SettingTab(),
              ],
            ),
          )),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Home Page');
  }
}

class PaymentTab extends StatelessWidget {
  const PaymentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Payment Page');
  }
}

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Setting Page');
  }
}
