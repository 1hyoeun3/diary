import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'pages/today_page.dart';

void main() {
  runApp(const Diary());
}

class Diary extends StatelessWidget {
  const Diary({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Interop Regular',
        textTheme: TextTheme(
          headlineMedium:
              TextStyle(fontFamily: 'Unbounded Regular', fontSize: 18),
        ),
      ),
      home: const TodayPage(),
    );
  }
}
