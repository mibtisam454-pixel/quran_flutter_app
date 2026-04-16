
import 'package:flutter/material.dart';
import 'resume_screen.dart';

class JuzScreen extends StatelessWidget {
  final List<Map<String, dynamic>> juzData = [
    {"juz": 1, "name": "Alif Lam Meem", "arabic": "الم", "page": 3},
    {"juz": 2, "name": "Sayaqool", "arabic": "سيقول", "page": 25},
    {"juz": 3, "name": "Tilka Rusul", "arabic": "تلك الرسل", "page": 45},
    {"juz": 4, "name": "Lan Tana Loo", "arabic": "لن تنالوا", "page": 65},
    {"juz": 5, "name": "Wal Mohsanat", "arabic": "والمحصنات", "page": 85},
    {"juz": 6, "name": "La Yuhibbullah", "arabic": "لا يحب الله", "page": 105},
    {"juz": 7, "name": "Wa Iza Samiu", "arabic": "وإذا سمعوا", "page": 125},
    {"juz": 8, "name": "Wa Lau Annana", "arabic": "ولو أننا", "page": 145},
    {"juz": 9, "name": "Qalal Malao", "arabic": "قال الملأ", "page": 165},
    {"juz": 10, "name": "Wa A'lamu", "arabic": "واعلموا", "page": 185},
    {"juz": 11, "name": "Yatazeroon", "arabic": "يعتذرون", "page": 205},
    {"juz": 12, "name": "Wa Mamin Da'abat", "arabic": "وما من دابة", "page": 225},
    {"juz": 13, "name": "Wa Ma Ubrioo", "arabic": "وما أبرئ", "page": 245},
    {"juz": 14, "name": "Rubama", "arabic": "ربما", "page": 265},
    {"juz": 15, "name": "Subhanallazi", "arabic": "سبحان الذي", "page": 285},
    {"juz": 16, "name": "Qal Alam", "arabic": "قال ألم", "page": 305},
    {"juz": 17, "name": "Aqtarabat", "arabic": "اقتربت", "page": 325},
    {"juz": 18, "name": "Qadd Aflaha", "arabic": "قد أفلح", "page": 345},
    {"juz": 19, "name": "Wa Qalallazina", "arabic": "وقال الذين", "page": 365},
    {"juz": 20, "name": "A'man Khalaq", "arabic": "أمن خلق", "page": 385},
    {"juz": 21, "name": "Utlu Ma Oohi", "arabic": "اتل ما أوحي", "page": 405},
    {"juz": 22, "name": "Wa Manyaqnut", "arabic": "ومن يقنت", "page": 425},
    {"juz": 23, "name": "Wa Mali", "arabic": "وما لي", "page": 445},
    {"juz": 24, "name": "Faman Azlam", "arabic": "فمن أظلم", "page": 465},
    {"juz": 25, "name": "Elahe Yuruddo", "arabic": "إليه يرد", "page": 485},
    {"juz": 26, "name": "Ha Meem", "arabic": "حم", "page": 505},
    {"juz": 27, "name": "Qala Fama Khatbukum", "arabic": "قال فما خطبكم", "page": 525},
    {"juz": 28, "name": "Qadd Sami Allah", "arabic": "قد سمع الله", "page": 545},
    {"juz": 29, "name": "Tabarakallazi", "arabic": "تبارك الذي", "page": 565},
    {"juz": 30, "name": "Amma Yatasa'aloon", "arabic": "عم يتساءلون", "page": 585},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Juz"),
        backgroundColor: Color(0xFF1E4FA1),
      ),
      body: ListView.builder(
        itemCount: juzData.length,
        itemBuilder: (context, index) {
          var juz = juzData[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResumeScreen(
                    initialPage: juz["page"],
                  ),
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
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${juz["juz"]} - ${juz["name"]}",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Page no: ${juz["page"]}",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    juz["arabic"],
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