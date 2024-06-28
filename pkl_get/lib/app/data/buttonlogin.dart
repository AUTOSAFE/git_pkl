import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    super.key,
    required this.width,
    required this.text,
    this.btnColor,
    this.btnTextColor,
    required this.onPressed, // Tambahkan ini
  });

  final double width;
  final String text;
  final Color? btnColor;
  final Color? btnTextColor;
  final VoidCallback onPressed; // Tambahkan ini

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed, // Tambahkan ini
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            text,
            style: TextStyle(
              color: btnTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
