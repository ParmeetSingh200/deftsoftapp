// import 'dart:html';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CommonButtonField extends StatefulWidget {
  final String? text;
  final double? height;
  final double? width;
  final double? fontsize;
  final Color? color;
  final Gradient? gradient;
  final Border? border;
  final TextStyle? customtext;
  final Function? func;
  final FormFieldValidator<String>? validator;
  final TextInputType? action;
  final VoidCallback? onTap;
  final Function? onfield;
  final TextEditingController? controller;
  final Function? onPressed;
  final Function? onSubmitted;

  const CommonButtonField(
      {super.key,
      this.text,
      this.height,
      this.width,
      this.color,
      this.customtext,
      this.func,
      this.validator,
      this.action,
      this.onTap,
      this.onfield,
      this.controller,
      this.onPressed,
      this.onSubmitted,
      this.fontsize, this.gradient, this.border});

  @override
  State<CommonButtonField> createState() => _CommonButtonFieldState();
}

class _CommonButtonFieldState extends State<CommonButtonField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          color: widget.color,
         gradient: widget.gradient,
         border:widget.border,
          // border: Border.all(width: 1, color: Color(0xFF27AA6B)
          // ),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        widget.text!,
        style: const TextStyle(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
