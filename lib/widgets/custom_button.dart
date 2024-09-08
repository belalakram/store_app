import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? Key, required this.icon, required this.onPress}):super( key: Key);
  IconData icon;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFFB0EAFD),
        mini: true,
        elevation: 0.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        onPressed: onPress,
      child:  Icon(
        icon,
        size: 35,
        color: Color(0xFF48B6DA),
      )

    );
  }
}
