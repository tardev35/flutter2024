import 'package:flutter/material.dart';

class ItemAdd extends StatelessWidget {
  const ItemAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ItemPage(),
    );
  }
}

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int itemCout = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Item Or Remove'),
        centerTitle: true,
        backgroundColor: Colors.green[600],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$itemCout",
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      itemCout += 1;
                    });
                  },
                  child: const Icon(Icons.plus_one_sharp),
                ),
                const SizedBox(width: 20),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      itemCout = itemCout <= 0 ? 0 : itemCout - 1;
                    });
                  },
                  child: const Icon(Icons.exposure_minus_1),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
