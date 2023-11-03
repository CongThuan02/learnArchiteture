import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/my_colors.dart';

class InputTextFormField extends StatefulWidget {
  final IconData? iconPrefix;
  final IconData? suffixIcon;
  final bool isPassword;
  final String? name;
  final Function? onTap;
  final Function onChange;
  const InputTextFormField({
    super.key,
    required this.name,
    this.isPassword = false,
    this.iconPrefix,
    required this.onChange,
    this.suffixIcon,
    this.onTap,
  });

  @override
  State<InputTextFormField> createState() => _InputTextFormFieldState();
}

class _InputTextFormFieldState extends State<InputTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${widget.name}',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: MyColor.primaryColor,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        TextFormField(
          obscureText: widget.isPassword,
          onChanged: (text) => widget.onChange(text),
          decoration: InputDecoration(
            suffixIcon: Icon(
              widget.suffixIcon,
              color: MyColor.primaryColor,
            ),
            prefixIcon: InkWell(
              onTap: () {},
              child: Icon(
                widget.iconPrefix,
                color: MyColor.primaryColor,
                size: 24,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
