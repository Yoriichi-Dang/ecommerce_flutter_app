import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputForm extends StatefulWidget {
  final String pathIcon;
  final String? typeInput;
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final String validateText;
  const InputForm(
      {super.key,
      required this.pathIcon,
      this.typeInput = 'text',
      required this.controller,
      required this.hintText,
      this.isPassword = false,
      required this.validateText});

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  bool _obscureText = true;
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

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
                } else if (widget.typeInput == 'email' &&
                    !value.contains('@')) {
                  return 'Invalid email @';
                }
                return null;
              },
              cursorColor: AppColors.secondary_400,
              obscureText: _obscureText & widget.isPassword,
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
                        icon: Icon(
                          !_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.white, // Màu của icon
                        ),
                        onPressed: _togglePasswordVisibility,
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
