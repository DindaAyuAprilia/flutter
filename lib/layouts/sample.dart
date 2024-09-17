import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Container'),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Colors.blueAccent, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 3,
            color: Colors.blueGrey,
          ),
        ),
        child: const Column(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 50,
            ),
            SizedBox(height: 20),
            Text(
              'ini container',
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Color.fromARGB(255, 45, 34, 190),
                fontSize: 36,               fontWeight: FontWeight.w500,
                wordSpacing: 10,
                letterSpacing: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}