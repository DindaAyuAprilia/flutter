import 'package:flutter/material.dart';

class SampleListView extends StatelessWidget {
  const SampleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar ListView'),
      ),
      body: Container(
        color: Colors.grey[200], // Background color for ListView
        child: ListView(
          children: [
            Container(
              height: 50,
              color: Colors.amber[900],
              child: const Center(
                child: Text(
                  'Item 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[800],
              child: const Center(
                child: Text(
                  'Item 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[700],
              child: const Center(
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(
                child: Text(
                  'Item 4',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(
                child: Text(
                  'Item 6',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 50,
              color: Colors.amber[300],
              child: const Center(
                child: Text(
                  'Item 7',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}