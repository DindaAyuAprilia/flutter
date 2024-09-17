import 'package:flutter/material.dart';

class SampleFlexible extends StatelessWidget {
  const SampleFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Flexible & Expanded'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Menggunakan Flexible dengan FlexFit.tight dan flex: 2
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: _sampleBox(
              color: Colors.blueAccent,
              tooltip: 'Flexible dengan FlexFit.tight',
            ),
          ),
          // Menggunakan Flexible dengan FlexFit.loose dan flex: 1
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: _sampleBox(
              color: Colors.greenAccent,
              tooltip: 'Flexible dengan FlexFit.loose',
            ),
          ),
          // Menggunakan Expanded, yang merupakan alias dari Flexible dengan FlexFit.tight
          Expanded(
            child: _sampleBox(
              color: Colors.redAccent,
              tooltip: 'Expanded (alias dari Flexible dengan FlexFit.tight)',
            ),
          ),
        ],
      ),
    );
  }
}

// Membuat widget _sampleBox dengan parameter warna dan tooltip
Widget _sampleBox({required Color color, required String tooltip}) {
  return Tooltip(
    message: tooltip,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
    ),
  );
}