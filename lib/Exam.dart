import 'package:flutter/material.dart';

class Exam extends StatefulWidget {
  const Exam({super.key});

  @override
  State<Exam> createState() => _ExamState();
}

class _ExamState extends State<Exam> {
  Color _containerColor = Colors.black;

  void _changeColor(Color color) {
    setState(() {
      _containerColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _changeColor(Colors.red),
              child: Text("Red"),
            ),
            ElevatedButton(
              onPressed: () => _changeColor(Colors.green),
              child: Text("Green"),
            ),
            ElevatedButton(
              onPressed: () => _changeColor(Colors.blue),
              child: Text("Blue"),
            ),
            ElevatedButton(
              onPressed: () => _changeColor(Colors.yellow),
              child: Text("Yellow"),
            ),
            ElevatedButton(
              onPressed: () => _changeColor(Colors.orange),
              child: Text("Orange"),
            ),
            Container(
              color: _containerColor,
              width: 250,
              height: 250,
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Exam(),
  ));
}