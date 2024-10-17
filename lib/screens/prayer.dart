import 'package:adkhar_app/components/light_dark_mode.dart';
import 'package:flutter/material.dart';
import '../models/allAdkher.dart';

class Prayer extends StatelessWidget {
  const Prayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'أذكار الصلاة',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              swithDarkLightMode(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: allDkhertypePrayer.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(child: allDkhertypePrayer[index]),
            );
          }),
    );
  }
}
