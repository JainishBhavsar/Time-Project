import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();

  String myText = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Calculator Demo'),
          ),
          body: Column(
            children: [
              const Text(
                'Sum Example',
                style: TextStyle(fontSize: 25),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Insert Value',
                ),
                controller: txt1,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Insert Value ',
                ),
                controller: txt2,
              ),
              ElevatedButton(
                  onPressed: () {
                    _showContent();
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    _showContent1();
                  },
                  child: const Text('-')),
              ElevatedButton(
                  onPressed: () {
                    _showContent2();
                  },
                  child: const Text('*')),
              ElevatedButton(
                  onPressed: () {
                    _showContent3();
                  },
                  child: const Text('/')),
              Text(
                myText,
                style: const TextStyle(fontSize: 50),
              ),
            ],
          )),
    );
  }

  void _showContent() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no1 + no2;

    setState(() {
      myText = "Output is ${c}";
    });
  }

  void _showContent1() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no1 - no2;

    setState(() {
      myText = "Output is ${c}";
    });
  }

  void _showContent2() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no1 * no2;

    setState(() {
      myText = "Output is ${c}";
    });
  }

  void _showContent3() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no1 / no2;

    setState(() {
      myText = "Output is ${c}";
    });
  }
}
