import 'package:flutter/material.dart';
import 'resume_screen.dart';



class SurahScreen extends StatelessWidget {

  final List<Map<String, dynamic>> surahList = [
    {"name": "Al-Fatiha", "arabic": "الفاتحة", "page": 3},
    {"name": "Al-Baqarah", "arabic": "البقرة", "page": 3},
    {"name": "Al-Imran", "arabic": "آل عمران", "page": 52},
    {"name": "An-Nisa", "arabic": "النساء", "page": 79},
    {"name": "Al-Ma'idah", "arabic": "المائدة", "page": 108},
    {"name": "Al-An'am", "arabic": "الأنعام", "page": 130},
    {"name": "Al-A'raf", "arabic": "الأعراف", "page": 153},
    {"name": "Al-Anfal", "arabic": "الأنفال", "page": 179},
    {"name": "At-Tawbah", "arabic": "التوبة", "page": 189},
    {"name": "Yunus", "arabic": "يونس", "page": 210},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Surah "),
        backgroundColor: Color(0xFF1E4FA1),
      ),
      body: ListView.builder(
        itemCount: surahList.length,
        itemBuilder: (context, index) {
          var surah = surahList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ResumeScreen(initialPage: surah["page"]),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFF1E4FA3),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue.shade900, width: 2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${index + 1} - ${surah["name"]}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Page no: ${surah["page"]}",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),

                  Text(
                    surah["arabic"],
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Amiri',
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