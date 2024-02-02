import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.filled = false,
    required this.enable,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final bool filled;
  final bool enable;
  final void Function(BuildContext) onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith(
          (states) {
            if (filled) return Theme.of(context).colorScheme.inversePrimary;
            return Colors.white;
          },
        ),
      ),
      onPressed: enable ? () => onPressed(context) : null,
      child: Text(text),
    );
  }
}
