import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputForm extends StatelessWidget {
  final String pathIcon;
  final String hintText;
  const InputForm({super.key, required this.pathIcon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Hoặc kích thước bạn muốn
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(pathIcon, width: 20, color: Colors.grey.shade700),
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              cursorColor: AppColors.secondary_400,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.shade700),
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey.shade300,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: AppColors.secondary_400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
