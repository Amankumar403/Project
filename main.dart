import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculater());


class BMICalculater extends StatelessWidget {
  const BMICalculater({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

