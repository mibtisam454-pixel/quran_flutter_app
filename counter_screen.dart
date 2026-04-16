import 'package:flutter/material.dart';



class TasbeehCounterScreen extends StatefulWidget {
  final String tasbeeh;

  TasbeehCounterScreen({required this.tasbeeh});

  @override
  _TasbeehCounterScreenState createState() => _TasbeehCounterScreenState();
}

class _TasbeehCounterScreenState extends State<TasbeehCounterScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.tasbeeh),
        backgroundColor: Color(0xFF1E4FA1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              widget.tasbeeh,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),


            GestureDetector(
              onTap: increment,
              child: Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF1E4FA1),
                    width: 6,
                  ),
                  color: Colors.blue.shade100.withOpacity(0.1),
                ),
                alignment: Alignment.center,
                child: Text(
                  "$count",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E4FA1),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: increment,
                  child: Text("Count"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1E4FA1),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: reset,
                  child: Text("Reset"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}