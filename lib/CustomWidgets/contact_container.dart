import 'package:flutter/material.dart';
import '../utilities/custom_colors.dart';
import '../utilities/custom_texts.dart';

class ContactWidget extends StatelessWidget {
  final String text;

  const ContactWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
              text,
              style: CustomTextStyles.s16w500,
          ),
          Container(
            height: 36,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: CustomColors.border,
            ),
            child: const Icon(Icons.phone,color: CustomColors.color1),
          ),
        ],
      ),
    );
  }
}
