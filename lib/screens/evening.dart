import 'package:flutter/material.dart';
import '../models/dkher_type.dart';
import '../models/allAdkher.dart';

class Evening extends StatefulWidget {
  const Evening({super.key});

  @override
  State<Evening> createState() => _EveningState();
}

class _EveningState extends State<Evening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار المساء',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allDkhertypeEvening.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypeEvening[index]),
            );
          }),
    );
  }
}
