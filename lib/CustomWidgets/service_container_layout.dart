import 'package:flutter/material.dart';
import '../utilities/custom_colors.dart';
import '../utilities/custom_texts.dart';

class ServiceContainerLayout extends StatelessWidget {
  final String text;
  final List<Widget> children;

  const ServiceContainerLayout({
    Key? key,
    required this.text,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              width: 1,
              color: CustomColors.border2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: CustomTextStyles.s20Bold,
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
