import 'package:flutter/material.dart';
import 'package:task/utilities/custom_colors.dart';
import '../utilities/custom_texts.dart';

class CustomInkWellPublicTransport extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Widget icon;
  final String subText;

  const CustomInkWellPublicTransport({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.icon,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
        child: Ink(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  icon,
                  const SizedBox(width: 18),
                  Text(
                    text,
                    style: CustomTextStyles.s16w500,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    subText,
                    style: CustomTextStyles.s11w500,
                  ),
                  const SizedBox(width: 20),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: CustomColors.color1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
