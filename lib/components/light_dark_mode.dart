import 'package:adkhar_app/components/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void swithDarkLightMode(BuildContext context) {
  ThemeNotifier themeNotifier =
      Provider.of<ThemeNotifier>(context, listen: false);
  if (themeNotifier.themeMode == ThemeMode.light) {
    themeNotifier.setTheme(ThemeMode.dark);
    //print('Switched to Dark Mode');
  } else {
    themeNotifier.setTheme(ThemeMode.light);
    //print('Switched to Light Mode');
  }
}
