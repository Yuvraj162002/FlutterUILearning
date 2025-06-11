import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// This widget is a custom rounded button that takes a text, an optional onPressed callback, and optional color and icon parameters.
class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color? color;
  final Icon? icons;

  final TextEditingController emailText;
  final TextEditingController passwordText;

  const RoundedButton({
    super.key,
    required this.text,
    required this.emailText,
    required this.passwordText,
    this.onPressed,
    this.color,
    this.icons,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
      onPressed: () {
        onPressed!();
        String uEmail = emailText.text.toString();
        String uPassword = passwordText.text.toString();

        print("Email is ${uEmail} and pass is ${uPassword}");
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 21)),
    );
  }
}
