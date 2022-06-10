import 'package:flutter/material.dart';

import '../main.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String n = MyApp.note;
  String c = MyApp.comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade100,
        body: SafeArea(
          child: Column(children: [
            Container(
              height: 250,
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: const Color(0xABF8F8F8),
              ),
              alignment: Alignment.center,
              child: Text(
                'DEPRESSION SEVERITY\n\n: $n',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            Container(
                height: 300,
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  color: const Color(0xABF8F8F8),
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      "COMMENT",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        '$c.',
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 24),
                      ),
                    )
                  ],
                )),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: reset,
          tooltip: 'RESTART TEST',
          backgroundColor: Colors.red,
          child: const Icon(Icons.restart_alt),
        ));
  }

  void reset() {
    MyApp.score = 0;
    Navigator.pushNamed(context, '/');
    MyApp.q = 1;
  }
}
