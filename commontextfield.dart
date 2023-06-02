import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  final String? hint;
  final TextStyle? hintstyle;
  final double? height;
  final double? width;
  final String? label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final bool obscureText;
  final bool readOnly;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final BoxConstraints? prefixIconConstraints;

  const CommonTextField({
    super.key,
    this.hint,
    this.height,
    this.width,
    this.label,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.maxLines,
    required this.obscureText,
    this.prefixIcon,
    this.suffixIcon,
    this.prefixIconConstraints,
    this.hintstyle,
    required this.readOnly,
  });
  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            color: Color(0xFFF1F1F1),
            // border: Border.all(width: 0, color: Color(0xFF23A365)),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xFF23A365),
                  blurRadius: 1,
                  spreadRadius: 0,
                  offset: Offset(0, 0)),
            ],
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            style: const TextStyle(color: Colors.black, fontSize: 20),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            textInputAction: widget.textInputAction,
            autofocus: false,
            readOnly: widget.readOnly,
            decoration: InputDecoration(
              // filled: true,
              // fillColor: Colors.white,
                contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                prefixIcon: widget.prefixIcon,
                //  Padding(
                //   padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
                //   child: Image.asset(wcc
                //     'assets/images/Vectorlock.png',
                //     height: 20,
                //     width: 20,
                //   ),
                // ),
                prefixIconConstraints: widget.prefixIconConstraints,
                // BoxConstraints(
                //   minHeight: 16,
                //   minWidth: 19,
                // ),
                border: InputBorder.none,
                labelText: widget.label,
                hintStyle: widget.hintstyle,
                alignLabelWithHint: true,
                hintText: widget.hint),
          ),
        ),
      ),
    );
  }
}
