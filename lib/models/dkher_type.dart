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
    return Consumer<ThemeNotifier>(
      builder: (context, themeNotifier, child) {
        final Color textColor = themeNotifier.themeMode == ThemeMode.light
            ? Colors.black
            : Colors.white;

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500), // Animation duration
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(
              opacity: animation, // Fade-out transition
              child: child,
            );
          },
          child: repeat > 0
              ? Card(
                  key: ValueKey(repeat), // Key for tracking the widget state
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(
                          widget.dkher,
                          key: ValueKey(themeNotifier.themeMode),
                          style: TextStyle(
                            fontSize: 20,
                            color: textColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed:
                              _decrementRepeat, // Decrease repeat on press
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
                )
              : const SizedBox.shrink(), // Empty widget when repeat is 0
        );
      },
    );
  }
}
