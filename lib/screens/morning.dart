import 'package:flutter/material.dart';
import '../models/allAdkher.dart';

class Morning extends StatefulWidget {
  const Morning({super.key});

  @override
  State<Morning> createState() => _MorningState();
}

class _MorningState extends State<Morning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار الصباح',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allDkhertypeMorning.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypeMorning[index]),
            );
          }),
    );
  }
}
