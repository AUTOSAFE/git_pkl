import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class list extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback? onPressed;
  const list(
      {Key? key,
      required this.imagePath,
      required this.title,
      this.onPressed,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 75,
            height: 60,
            child: Column(
              children: [
                Image.asset(imagePath, width: 32, height: 32),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: GoogleFonts.montserrat(fontSize: 10),
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
