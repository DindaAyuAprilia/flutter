import 'package:flutter/material.dart';

class SampleListViewBuilder extends StatelessWidget {
  const SampleListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // Data list yang akan ditampilkan dalam ListView.builder
    final items = List<String>.generate(30, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with Builder'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: 50,
            color: index % 2 == 0 ? Colors.teal[300] : const Color.fromARGB(255, 0, 20, 195),
            child: Center(
              child: Text(
                items[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}