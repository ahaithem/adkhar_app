import 'package:flutter/material.dart';
import '../models/allAdkher.dart';

class Mosquee extends StatefulWidget {
  const Mosquee({super.key});

  @override
  State<Mosquee> createState() => _MosqueeState();
}

class _MosqueeState extends State<Mosquee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار المسجد',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allDkhertypeMosque.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypeMosque[index]),
            );
          }),
    );
  }
}
