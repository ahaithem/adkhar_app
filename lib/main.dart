import 'package:flutter/material.dart';
import './models/dkher.dart';
import './screens/evening.dart';
import './screens/morning.dart';
import './screens/mosquee.dart';
import './screens/prayer.dart';
import './screens/sleep.dart';
import './screens/weakup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end, // Align to the right
          children: [
            Text(
              'أذكار المسلم',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Column(
          children: [
            DkherName(
              name: 'أذكار الصباح',
              color: Color(0xFF23362B), // Corrected color format
              imagePath: 'assets/images/soleil.png',
              screen: Morning(),
            ),
            DkherName(
              name: 'أذكار المساء',
              color: Color(0xFF1BB28C), // Corrected color format
              imagePath: 'assets/images/soir.png',
              screen: Evening(),
            ),
            DkherName(
              name: 'اذكار النوم',
              color: Color(0xFFE86A58), // Corrected color format
              imagePath: 'assets/images/dormir.png',
              screen: Sleep(),
            ),
            DkherName(
              name: 'اذكار المسجد',
              color: Color(0xFFEFEEEA), // Corrected color format
              imagePath: 'assets/images/mosquee.png',
              screen: Mosquee(),
            ),
            DkherName(
              name: 'اذكار الاستيقاظ',
              color: Color(0xFF9BC7C5), // Corrected color format
              imagePath: 'assets/images/alarme.png',
              screen: Weakup(),
            ),
            DkherName(
              name: 'اذكار الصلاة',
              color: Color(0xFFFED45B), // Corrected color format
              imagePath: 'assets/images/priere.png',
              screen: Prayer(),
            ),
          ],
        ),
      ),
    );
  }
}
