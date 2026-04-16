
import 'package:flutter/material.dart';

class DuaScreen extends StatelessWidget {
  final List<Map<String, String>> duaList = [
    {
      "title": "Dua Before Eating",
      "arabic": "بِسْمِ اللَّهِ",
      "translation": "Allah ke naam se"
    },
    {
      "title": "Dua After Eating",
      "arabic": "الْحَمْدُ لِلَّهِ",
      "translation": "Sab tareef Allah ke liye"
    },
    {
      "title": "Dua Before Sleeping",
      "arabic": "اللَّهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَا",
      "translation": "Allah ke naam ke saath main marta hoon aur jeeta hoon"
    },
    {
      "title": "Dua After Waking Up",
      "arabic": "الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا",
      "translation": "Allah ka shukar jisne hume zinda kiya"
    },
    {
      "title": "Dua Entering Home",
      "arabic": "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلِجِ",
      "translation": "Ya Allah ghar mein dakhil hone ki barkat de"
    },
    {
      "title": "Dua Leaving Home",
      "arabic": "بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ",
      "translation": "Allah par bharosa karke nikalta hoon"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dua"),
        backgroundColor: Color(0xFF1E4FA1),
      ),
      body: ListView.builder(
        itemCount: duaList.length,
        itemBuilder: (context, index) {
          var dua = duaList[index];

          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF1E4FA3),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue.shade900, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dua["title"]!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    dua["arabic"]!,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Amiri',
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  dua["translation"]!,
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}