// // import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_basic/layouts/button.dart';
// // import 'package:flutter_basic/layouts/card.dart';
// // import 'package:flutter_basic/layouts/columns_rows.dart';
// // import 'package:flutter_basic/layouts/flexible_Expanded.dart';
// // import 'package:flutter_basic/layouts/grid_versi_1.dart';
// // import 'package:flutter_basic/layouts/grid_versi_2.dart';
// // import 'package:flutter_basic/layouts/listview_versi_1.dart';
// // import 'package:flutter_basic/layouts/listview_versi_2.dart';
// // import 'package:flutter_basic/layouts/sizebox.dart';
// // import 'package:flutter_basic/layouts/stack.dart';




// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   String _text = 'Ini Adalah StatefulWidget';
//   void _changeText() {
//     setState(() {
//       _text = 'Text Telah Berubah';
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stateful Widget'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(_text),
//             ElevatedButton(
//               onPressed: _changeText,
//               child: const Text(
//                 'Ubah text',
//                 style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blueAccent,
//                     letterSpacing: 2,
//                     wordSpacing: 5,
//                     decoration: TextDecoration.underline,
//                     decorationColor: Colors.red,
//                     decorationStyle: TextDecorationStyle.dashed),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_basic/page/page1.dart';
import 'package:flutter_basic/page/page2.dart';
import 'package:flutter_basic/page/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const PageOne(),
        '/second': (context) {
          final Map<String, String> book = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
          return PageTwo(book: book);
        },
        '/form': (context) {
          final Map<String, String>? book = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
          return FormPage(book: book);
        },
      },
    );
  }
}


