import 'package:flutter/material.dart';
import 'data/q.dart';
import 'pages/result.dart';
import 'pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static int score = 0;
  static int q = 1;
  static String comment = '';
  static String note = '';
  static void result() {
    if (MyApp.score >= 20) {
      MyApp.comment =
          'Warrants active treatment with psychotherapy, medications, or combination';
      MyApp.note = 'SEVERE';
    } else if (MyApp.score >= 15) {
      MyApp.comment =
          'Warrants active treatment with psychotherapy, medications, or combination';
      MyApp.note = 'MODERATELY SEVERE';
    } else if (MyApp.score >= 10) {
      MyApp.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      MyApp.note = 'MODERATELY';
    } else if (MyApp.score >= 5) {
      MyApp.comment =
          'Use clinical judgment (symptom duration, functional impairment) to determine necessity of treatment';
      MyApp.note = 'MILD';
    } else if (MyApp.score >= 0) {
      MyApp.comment = 'Not require treatment';
      MyApp.note = 'NONE';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink.shade100),
      title: 'Mental Health Test',
      initialRoute: '/',
      routes: {
        '/': (context) => const ST(),
        //'/home': (context) => const HomePage(),
        '/q1': (context) => const Q1(),
        '/q2': (context) => const Q2(),
        '/q3': (context) => const Q3(),
        '/q4': (context) => const Q4(),
        '/q5': (context) => const Q5(),
        '/q6': (context) => const Q6(),
        '/q7': (context) => const Q7(),
        '/q8': (context) => const Q8(),
        '/q9': (context) => const Q9(),
        '/result': (context) => const Result(),
      },
    );
  }
}
