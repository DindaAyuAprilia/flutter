import 'package:flutter/material.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar card widget'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 5,
          // Menambahkan latar belakang gradien pada Card
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlueAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('Kumpulan'),
                  subtitle: Text('Hadits Arbain'),
                ),
                const Divider(
                  height: 2,
                  thickness: 1,
                ),
                // Menambahkan gambar di dalam card
                Image.network(
                  'https://via.placeholder.com/150',
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Menambahkan Tooltip pada tombol
                    Tooltip(
                      message: 'Simpan koleksi',
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Simpan'),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Tooltip(
                      message: 'Buka koleksi',
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Buka'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}