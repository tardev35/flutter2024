import 'package:flutter/material.dart';

class Listviewgenerate extends StatelessWidget {
  const Listviewgenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListviewgeneratePage(),
    );
  }
}

class ListviewgeneratePage extends StatelessWidget {
  const ListviewgeneratePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Genarate Page',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
        foregroundColor: Colors.white,
        leading: const Icon(Icons.add_business),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                9,
                (index) {
                  return Card(
                    margin: const EdgeInsets.all(8),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    elevation: 1.0,
                    child: SizedBox(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network('https://via.placeholder.com/150'),
                            const SizedBox(height: 10),
                            Text(
                              'Card Title $index',
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                                'This Is A Card Some Descrioption This Is A Card Some Descrioption')
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 100,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Menu 1',
              backgroundColor: Colors.green[600],
              foregroundColor: Colors.white,
              child: const Icon(Icons.call),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 10,
            child: FloatingActionButton(
              onPressed: () {},
              tooltip: 'Menu2',
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              child: const Icon(Icons.messenger),
            ),
          )
        ],
      ),
    );
  }
}
