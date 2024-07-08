import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
                10,
                (index) {
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Card Title $index'),
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
    );
  }
}
