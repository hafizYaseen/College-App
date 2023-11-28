import 'package:college_app/components/constants.dart';
import 'package:flutter/material.dart';

class ButtonOne extends StatelessWidget {
  final bool loading;
  String? text1, fontFamily;
  Color ?backColor, color, borderColor, firstColor, secondColor;
  double fontSize, borderRadius, w, h;
  final VoidCallback onTap;

  ButtonOne(
      {required this.text1,
      required this.color,
      required this.fontSize,
        this.backColor,
      required this.borderRadius,
      required this.borderColor,
      required this.w,
      required this.h,
        required this.onTap,
      this.fontFamily = Constants.semiBoldFont,
      this.firstColor = Colors.transparent,
      this.secondColor = Colors.transparent,
      this.loading = false,
      });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: w,
        height: h,
        child: Center(
          child: loading ? CircularProgressIndicator(strokeWidth: 3, color: Colors.black,) : Text(
            text1!,
            style: TextStyle(
              color: color,
              fontFamily: fontFamily,
              fontSize: fontSize,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            color: backColor,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
                colors: [
                  firstColor!, secondColor!
                ]
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: borderColor!)),
      ),
    );
  }
}
