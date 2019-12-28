import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final double width;
  final double heigh;
  final BorderRadiusGeometry borderRadius;
  final Function onPressed;

  const CustomButton(
      {Key key,
      this.width,
      this.heigh,
      this.borderRadius,
      this.onPressed,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: Color(0xffFD5739),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
