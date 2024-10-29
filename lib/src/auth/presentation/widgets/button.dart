import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final String title;
  final double padding;
  final Color backgroundColor;
  final VoidCallback onPress;
  final double fontSize;
  final Icon? icon;
  const Button({
    super.key,
    required this.title,
    this.padding = 17.0,
    this.backgroundColor = AppColors.brown_300,
    required this.onPress,
    this.fontSize = 17,
    this.width = 300,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
          padding: WidgetStateProperty.all<EdgeInsets>(
            EdgeInsets.all(padding),
          ),
        ),
        onPressed: onPress,
        child: Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
          ),
        ),
      ),
    );
  }
}
