import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyScreen extends StatefulWidget {
  MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  TextEditingController txt1 = TextEditingController();
  String myText = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leap detecter ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Leap Demo'),
        ),
        body: Column(children: [
          const Text(
            'Leap Detecter',
            style: TextStyle(fontSize: 40),
          ),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Enter Month',
            ),
            controller: txt1,
          ),
          ElevatedButton(
              onPressed: () {
                _showContent();
              },
              child: const Text('Click Me')),
          Text(
            myText,
            style: const TextStyle(fontSize: 40),
          ),
        ]),
      ),
    );
  }

  void _showContent() {
    var no1 = int.parse(txt1.text);
    if (no1 % 4 == 0) {
      setState(() {
        myText = "Leap Year";
      });
    } else {
      setState(() {
        myText = "Not Leap Year";
      });
    }
  }
}
