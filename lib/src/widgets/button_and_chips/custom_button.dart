import 'package:alpha_hill_demo/utilities/utilities.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: VariableUtilities.theme.lightGoldTwo,
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Text(
              title,
              style: FontUtilities.h16(
                fontColor: VariableUtilities.theme.darkBlueGrey,
              ),
            ),
            const Icon(
              Icons.send_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
