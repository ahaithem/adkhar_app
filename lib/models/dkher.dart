import 'package:flutter/material.dart';

class DkherName extends StatelessWidget {
  final String name;
  final Color color;
  final String imagePath;
  final Widget screen;

  DkherName(
      {required this.name,
      required this.color,
      required this.imagePath,
      required this.screen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: InkWell(
        onTap: () {
          // Navigate to another screen when tapped
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => screen), // NextScreen is the destination
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: color, // Set background color
            borderRadius: BorderRadius.circular(12), // Rounded corners
          ),
          padding: EdgeInsets.all(16), // Add some padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                imagePath,
                height: 50, // Set desired height
                width: 50, // Set desired width
              ),
              Text(
                name,
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold), // Styling text
              ),
            ],
          ),
        ),
      ),
    );
  }
}
