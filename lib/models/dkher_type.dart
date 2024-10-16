import 'package:flutter/material.dart';

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

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              widget.dkher,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.center, // Align text to the center
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
  }
}
