import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton(
      {super.key, required this.iconInRoundButton, required this.onPress});
  final IconData iconInRoundButton;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: const CircleBorder(),
      fillColor: kInactiveSliderColor,
      constraints: const BoxConstraints(minHeight: 56.0, minWidth: 56.0),
      child: Icon(iconInRoundButton),
    );
  }
}
