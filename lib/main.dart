import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/screens/welcomeScreen.dart';

void main() {
  runApp(cofee());
}

class cofee extends StatelessWidget {
  const cofee({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Welcomescreen()
    );
  }
}
