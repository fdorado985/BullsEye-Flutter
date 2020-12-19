import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  StyledButton({
    @required this.icon,
    @required this.onPressed,
  });

  final IconData icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Colors.black,
      splashColor: Colors.redAccent,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      shape: CircleBorder(
        side: BorderSide(color: Colors.white),
      ),
    );
  }
}
