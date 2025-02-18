import 'package:flutter/material.dart';
import 'package:manara_test/core/extensions/theme_ext.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.onPressed, this.child, this.style});
  final void Function()? onPressed;
  final Widget? child;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style ?? context.getTheme.elevatedButtonTheme.style,
      child: child,
    );
  }
}
