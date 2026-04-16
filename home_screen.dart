
import 'package:flutter/material.dart';
import 'resume_screen.dart';
import 'surah_screen.dart';
import 'juz_screen.dart';
import 'dua_screen.dart';
import 'tasbeeh_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> menu = [
    "Resume",
    "Juz",
    "Surah",
    "Dua",
    "Tasbeeh",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Holy Quran"),
        backgroundColor: const Color(0xFF1E4FA3),
        actions: const [Icon(Icons.more_vert)],
      ),
      backgroundColor: const Color(0xFFBFD3E6),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xFFD6E4F0),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color(0xFF1E4FA3), width: 2),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: menu.map((e) => menuButton(e)).toList(),
          ),
        ),
      ),
    );
  }

  Widget menuButton(String text) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1E4FA3),
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          if (text == "Resume") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResumeScreen()),
            );
          }
          if (text == "Juz") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JuzScreen()),
            );
          }
          if (text == "Surah") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SurahScreen()),
            );
          }

          if (text == "Dua") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DuaScreen()),
            );
          }
          if (text == "Tasbeeh") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TasbeehScreen()),
            );
          }
        },
        child: Text(
          text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}