import 'package:flutter/material.dart';

class SampleStack extends StatelessWidget {
  const SampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar Stack'),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 230,
              width: 230,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Top Right',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 0,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blue.withOpacity(0.8),
              child: const Center(
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 50,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Bottom Left',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}