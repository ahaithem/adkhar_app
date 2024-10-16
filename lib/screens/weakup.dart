import 'package:flutter/material.dart';
import '../models/allAdkher.dart';

class Weakup extends StatefulWidget {
  const Weakup({super.key});

  @override
  State<Weakup> createState() => _WeakupState();
}

class _WeakupState extends State<Weakup> {
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
          itemCount: allDkhertypeWeakup.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypeWeakup[index]),
            );
          }),
    );
  }
}
