import 'package:flutter/material.dart';

import '../model/button.dart';

class ST extends StatefulWidget {
  const ST({Key? key}) : super(key: key);

  @override
  State<ST> createState() => _STState();
}

class _STState extends State<ST> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.pink.shade100,
      child: Column(
        children: [
          Container(
            height: 400,
            //margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
              color: Color(0xABF8F8F8),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 40, bottom: 15),
                  // padding: const EdgeInsets.symmetric(vertical: 60),
                  alignment: Alignment.center,
                  child: const Text(
                    "MENTAL HEALTH TRACKER",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/b2.webp',
                  scale: 1.5,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 80),
            alignment: Alignment.center,
            child: const Start(),
          ),
          const Text(
            "Made with ❤ by Dj Prash",
            textAlign: TextAlign.center,
            style: TextStyle(
                //color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
