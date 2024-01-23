import 'package:flutter/material.dart';

import '../components/task.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool opacity = true;
  void _hide() {
    setState(() {
      opacity = !opacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity ? 1.0 : 0.0,
          duration: Duration(milliseconds: 1000),
          child: ListView(
            children: <Widget>[
              Task("andar de bike", "assets/images/bike.webp", 1),
              Task("estudar flutter", "assets/images/flutter.png", 3),
              Task("jogar clash", "assets/images/jogar.jpg", 1),
              Task("ler", "assets/images/ler.jpg", 1),
              Task("meditar", "assets/images/meditar.jpeg", 2),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: _hide,
        child: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}



