import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.width,
    required this.text,
    this.btnColor,
    this.btnTextColor,
    this.elevation,
    this.onPressed,
  });

  final double width;
  final String text;
  final Color? btnColor;
  final Color? btnTextColor;
  final double? elevation;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation ?? 0,
      borderRadius: BorderRadius.circular(10),
      color: btnColor,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: width,
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
      ),
    );
  }
}
