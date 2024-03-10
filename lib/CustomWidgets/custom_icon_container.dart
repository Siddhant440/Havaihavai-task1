import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utilities/custom_texts.dart';

class CustomIconContainer extends StatelessWidget {
  final String svgPath;
  final String text;
  final String subtext;

  const CustomIconContainer(
      {super.key,
      required this.svgPath,
      required this.text,
      required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          svgPath,
          width: 16,
          height: 16,
        ),
        const SizedBox(height: 9),
        Text(text, style: CustomTextStyles.s16w500),
        const SizedBox(height: 4),
        Text(subtext, style: CustomTextStyles.s11w500),
      ],
    );
  }
}
