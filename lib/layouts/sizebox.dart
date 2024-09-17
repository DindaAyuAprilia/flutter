import 'package:flutter/material.dart';

class SampleSizedBox extends StatelessWidget {
  const SampleSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar SizedBox'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Menggunakan SizedBox untuk mengatur ukuran dan memberi ruang pada UI
          SizedBox(
            height: 100,
            width: 300,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                border: Border.all(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menambahkan Tooltip pada tombol
              Tooltip(
                message: 'Konfirmasi tindakan',
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Tooltip(
                message: 'Batalkan tindakan',
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
