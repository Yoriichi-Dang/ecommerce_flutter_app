import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Button extends StatelessWidget {
  final double width;
  final String title;
  final double padding;
  final Color backgroundColor;
  final VoidCallback onPress;
  final double fontSize;
  final String? pathIcon;
  const Button({
    super.key,
    required this.title,
    this.padding = 17.0,
    this.backgroundColor = AppColors.brown_300,
    required this.onPress,
    this.fontSize = 17,
    this.width = 300,
    this.pathIcon,
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
        child: pathIcon == null
            ? Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    pathIcon!,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
