import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';

typedef OnSelectChip = void Function(bool);

class CustomChip extends StatefulWidget {
  final String title;
  final OnSelectChip onSelectChip;
  bool isSelected;
  CustomChip({
    Key? key,
    required this.title,
    required this.onSelectChip,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isSelected = !widget.isSelected;
        });
        widget.onSelectChip(widget.isSelected);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isSelected
                ? VariableUtilities.theme.lightGoldTwo
                : VariableUtilities.theme.whiteColor.withOpacity(0.5),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(30),
          color: VariableUtilities.theme.darkBlueGreyTwo,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MobileRatio.getWidth(context, 14),
          vertical: MobileRatio.getHeight(context, 12),
        ),
        child: Text(
          widget.title,
          style: FontUtilities.h16(
            fontColor: VariableUtilities.theme.primaryTextColor,
          ),
        ),
      ),
    );
  }
}
