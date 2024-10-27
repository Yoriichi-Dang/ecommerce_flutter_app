import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputForm extends StatefulWidget {
  final String pathIcon;
  final String hintText;
  final bool isPassword;
  final String validateText;
  const InputForm(
      {super.key,
      required this.pathIcon,
      required this.hintText,
      this.isPassword = false,
      required this.validateText});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60, // Hoặc kích thước bạn muốn
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(widget.pathIcon,
              width: 20, color: Colors.grey.shade700),
          const SizedBox(width: 15),
          Expanded(
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return widget.validateText;
                }
                return null;
              },
              cursorColor: AppColors.secondary_400,
              obscureText: widget.isPassword & !showPassword,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.grey.shade700),
                border: UnderlineInputBorder(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey.shade300,
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: AppColors.secondary_400,
                  ),
                ),
                suffixIcon: widget.isPassword
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.secondary_400,
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
