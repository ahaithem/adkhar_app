import 'package:flutter/material.dart';
import '../models/allAdkher.dart';

class Sleep extends StatefulWidget {
  const Sleep({super.key});

  @override
  State<Sleep> createState() => _SleepState();
}

class _SleepState extends State<Sleep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار النوم',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allDkhertypeSleep.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypeSleep[index]),
            );
          }),
    );
  }
}
