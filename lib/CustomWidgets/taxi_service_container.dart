import 'package:flutter/material.dart';
import '../utilities/custom_texts.dart';
import '../utilities/custom_colors.dart';

class TaxiServiceDetails extends StatelessWidget {
  final String imageAssetPath;
  final String price;
  final bool isLuxury;

  const TaxiServiceDetails({
    Key? key,
    required this.imageAssetPath,
    required this.price,
    this.isLuxury = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            blurRadius: 6,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Image and price
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 15),
              Image.asset(imageAssetPath),
              const SizedBox(height: 8),
              Text(price, style: CustomTextStyles.s11w500),
            ],
          ),
          // "Luxury" text
          if (isLuxury)
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: const BoxDecoration(
                  color: CustomColors.color1,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
                child: Text(
                  'Luxury',
                  style: CustomTextStyles.s10wBold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
