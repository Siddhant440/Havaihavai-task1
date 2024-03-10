import 'package:flutter/material.dart';
import '../utilities/custom_texts.dart';
import '../utilities/custom_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Widget? icon;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(double.infinity, 48),
          backgroundColor: CustomColors.color1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) icon!,
            if (icon != null) const SizedBox(width: 10),
            Text(
              text,
              style: CustomTextStyles.s16Bold.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
