import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool disabled;

  const PrimaryButton({
    super.key, 
    required this.text, 
    required this.onPressed,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoButton(
        color: disabled ? Color(0xFFE2EAF1) : Color(0xFFFFC41E),
        onPressed: disabled ? null : onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: disabled ? Color(0xFF8FA1B7) : Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
