import 'package:flutter/material.dart';

class SampleColumnRow extends StatelessWidget {
  const SampleColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Column & Row')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  color: Colors.blue,
                  child: const Icon(Icons.star, color: Colors.white),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  width: 50,
                  color: Colors.red,
                  child: const Icon(Icons.favorite, color: Colors.white),
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Green Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Red Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'Yellow Container',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
          Flexible(
            child: Container(
              height: 50,
              color: Colors.grey,
              child: const Center(
                child: Text(
                  'Grey Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}