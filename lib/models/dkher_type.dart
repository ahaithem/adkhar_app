import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:adkhar_app/components/theme_notifier.dart';

class DkherType extends StatefulWidget {
  final String dkher;
  final int repeat;

  DkherType({required this.dkher, required this.repeat});

  @override
  _DkherTypeState createState() => _DkherTypeState();
}

class _DkherTypeState extends State<DkherType> {
  late int repeat;

  @override
  void initState() {
    super.initState();
    repeat = widget.repeat; // Initialize repeat with widget's value
  }

  void _decrementRepeat() {
    setState(() {
      if (repeat > 0) {
        repeat--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (repeat <= 0) {
      return SizedBox.shrink(); // Hide card when repeat is 0
    }

    // Use Consumer to rebuild this part when the theme changes
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        final Color textColor = themeNotifier.themeMode == ThemeMode.light
            ? Colors.black
            : Colors.white;

        return Card(
          margin: EdgeInsets.symmetric(vertical: 8),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: Text(
                    widget.dkher,
                    key: ValueKey(themeNotifier.themeMode),
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _decrementRepeat, // Decrease repeat on press
                  child: Text(
                    'التكرار $repeat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
