import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget icon;
  final Function onPressed;
  const ContactButton({
    Key key,
    @required this.buttonText,
    @required this.icon,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          textStyle: TextStyle(color: Colors.blue),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        icon: icon,
        label: Text(
          "$buttonText",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
      ),
    );
  }
}
