import 'package:flutter/material.dart';
import '../utilities/custom_texts.dart';

class CustomInkWell extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? icon;
  final String? subText;

  const CustomInkWell(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.icon,
      this.subText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) icon!,
                if (icon != null) const SizedBox(width: 8),
                Text(
                  text!,
                  style: CustomTextStyles.s14w500,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
