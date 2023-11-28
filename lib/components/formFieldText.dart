import 'package:college_app/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormFieldText extends StatefulWidget {
  double h, w;
  BorderRadius enabledBorderRadius, focusedBorderRadius, errorBorderRadius;
  TextInputType textInputType;
  String? hintText, validatorText;
  int? length, maxLines;
  Color borderColor, fillColor, enabledBorderColor, errorBorderColor, cursorColor, hintTextColor;
  Color iconColor;
  bool obscureText;
  IconData? suffixIcon;
  final controller;

  FormFieldText(
      {required this.h,
      required this.w,
      required this.textInputType,
      required this.hintText,
      required this.length,
      required this.borderColor,
      required this.fillColor,
      required this.enabledBorderColor,
        required this.errorBorderColor,
      required this.cursorColor,
      required this.hintTextColor,
      required this.obscureText,
      this.maxLines,
        this.suffixIcon,
        this.iconColor = Colors.black,
      required this.enabledBorderRadius,
      required this.focusedBorderRadius,
        required this.errorBorderRadius,
        this.controller,
        this.validatorText,
      });

  @override
  State<FormFieldText> createState() => _FormFieldTextState();
}

class _FormFieldTextState extends State<FormFieldText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.h,
      width: widget.w,
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.maxLines,
        obscureText: widget.obscureText,
        cursorColor: widget.cursorColor,
        keyboardType: widget.textInputType,
        style: TextStyle(
          fontFamily: Constants.mediumFont,
          fontSize: 16,
          color: Colors.black
        ),
        inputFormatters: [LengthLimitingTextInputFormatter(widget.length)],
        decoration: InputDecoration(
          suffixIcon: Icon(widget.suffixIcon ,color: widget.iconColor,),
          contentPadding: EdgeInsets.only(top: 5,left: 20),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: widget.hintTextColor,
            fontFamily: Constants.boldFont
          ),

          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(color: widget.borderColor!),
            borderRadius: widget.enabledBorderRadius,
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: widget.enabledBorderColor),
              borderRadius: widget.focusedBorderRadius
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: widget.errorBorderColor),
                borderRadius: widget.errorBorderRadius
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.red)
            ),
            fillColor: widget.fillColor,
          filled: true,
        ),
      validator: (value){
          if(value!.isEmpty){
            return widget.validatorText;
          }
          return null;
      },
      ),
    );
  }
}
