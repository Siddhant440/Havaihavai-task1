import 'package:flutter/material.dart';
import '../utilities/custom_colors.dart';
import '../utilities/custom_texts.dart';

class CollapsibleContainer extends StatefulWidget {
  final String title;
  final String description;

  const CollapsibleContainer({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _CollapsibleContainerState createState() => _CollapsibleContainerState();
}

class _CollapsibleContainerState extends State<CollapsibleContainer> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: CustomTextStyles.s14w500,
              ),
              IconButton(
                icon: Icon(_expanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down),
                onPressed: () {
                  setState(() {
                    _expanded = !_expanded;
                  });
                },
              ),
            ],
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: _expanded ? null : 0,
            child: AnimatedOpacity(
              opacity: _expanded ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  widget.description,
                  style: CustomTextStyles.s12w500
                      .copyWith(color: CustomColors.color4),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
