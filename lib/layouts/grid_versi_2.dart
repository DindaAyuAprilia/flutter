import 'package:flutter/material.dart';

class SampleGridBuilder extends StatelessWidget {
  const SampleGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // Data list yang akan ditampilkan dalam GridView.builder
    final items = List<String>.generate(10, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView with Builder'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 3,
          crossAxisSpacing: 3,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? Colors.teal[300] : Colors.teal[100],
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