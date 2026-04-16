
import 'package:flutter/material.dart';
import 'counter_screen.dart';

class TasbeehScreen extends StatelessWidget {


  final List<Map<String, String>> tasbeehList = [
    {"en": "SubhanAllah", "ur": "سبحان اللہ"},
    {"en": "Alhamdulillah", "ur": "الحمد للہ"},
    {"en": "Allahu Akbar", "ur": "اللہ اکبر"},
    {"en": "Astaghfirullah", "ur": "أستغفر اللہ"},
    {"en": "Subhan Allah", "ur": "سبحان اللہ,"},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeeh"),
        backgroundColor: Color(0xFF1E4FA1),
      ),
      body: ListView.builder(
        itemCount: tasbeehList.length,
        itemBuilder: (context, index) {
          var tasbeeh = tasbeehList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TasbeehCounterScreen(tasbeeh: tasbeeh["en"]!),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1E4FA3),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.shade900, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tasbeeh["en"]!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    tasbeeh["ur"]!,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}