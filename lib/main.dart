import 'package:adkhar_app/components/theme.dart';
import 'package:adkhar_app/components/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/dkher.dart';
import './screens/evening.dart';
import './screens/morning.dart';
import './screens/mosquee.dart';
import './screens/prayer.dart';
import './screens/sleep.dart';
import './screens/weakup.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        return AnimatedTheme(
          data: themeNotifier.themeMode == ThemeMode.light
              ? lightTheme
              : darkTheme,
          duration: Duration(milliseconds: 300), // Adjust this for smoothness
          child: MaterialApp(
            themeMode: themeNotifier.themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            home: MyHomePage(),
          ),
        );
      },
    );
  }
}

//debugShowCheckedModeBanner: false,
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
        title: const Row(
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
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: () {
              ThemeNotifier themeNotifier =
                  Provider.of<ThemeNotifier>(context, listen: false);
              if (themeNotifier.themeMode == ThemeMode.light) {
                themeNotifier.setTheme(ThemeMode.dark);
                //print('Switched to Dark Mode');
              } else {
                themeNotifier.setTheme(ThemeMode.light);
                //print('Switched to Light Mode');
              }
            },
          ),
        ],
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
