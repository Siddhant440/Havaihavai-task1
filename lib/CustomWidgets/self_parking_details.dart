import 'package:flutter/material.dart';
import 'package:task/utilities/custom_colors.dart';
import 'package:task/utilities/custom_texts.dart';
import 'package:flutter_svg/svg.dart';

class SelfParkingDetails extends StatelessWidget {
  final String vehicle;
  final String vehType;
  final String rate;

  const SelfParkingDetails({
    Key? key,
    required this.vehicle,
    required this.vehType,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(vehicle, height: 14, width: 24),
              const SizedBox(width: 9),
              Text(
                vehType,
                style: CustomTextStyles.s14w500
                    .copyWith(color: CustomColors.color3),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'AED $rate / day',
                style: CustomTextStyles.s14w500,
              ),
              const SizedBox(width: 3),
              const Icon(
                Icons.info_outline_rounded,
                size: 11,
                color: CustomColors.color4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
