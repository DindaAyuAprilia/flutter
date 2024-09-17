
import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  int _selectedIndex = 0;

  void _OnItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold);

  static final List<Widget> _widgetOpton = <Widget>[
    const Text(
      'Selamat Datang Di rumah',
      style: optionStyle
    ),
    const Text(
      'Selamat Bekerja',
      style: optionStyle
    ),
    const Text(
      'Hati-Hati di sekolah',
      style: optionStyle
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Belajar Button Navigation Bar'),
      ),
      body: Center(
        child: _widgetOpton.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: "Business",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: "School",
        )
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.red,
      onTap: _OnItemTapped,
      ),
    );
  
  }
}