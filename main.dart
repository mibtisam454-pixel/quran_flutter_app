import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(Digital());
}

class Digital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}