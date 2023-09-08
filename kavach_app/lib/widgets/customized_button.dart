import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  const CustomizedButton(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.onPressed,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
            margin: EdgeInsets.all(6.0),
            height: 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 1, color: Color(0XFF005653)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Text(buttonText!,
                    style: TextStyle(color: textColor!, fontSize: 24)))),
      ),
    );
  }
}