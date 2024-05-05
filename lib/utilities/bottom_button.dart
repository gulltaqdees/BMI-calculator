//import 'constants.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kSliderActiveColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}




/*class BottomButton extends StatelessWidget {
  BottomButton({required this.onPress, required this.text});
  final VoidCallback onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kSliderActiveColor,
        margin: const EdgeInsets.only(top: 10.0),
        //padding: const EdgeInsets.only(bottom: 1.0),
        child: Center(child: Text(text,style:kLargeButtonTextStyle)),
      ),
    );
  }
}*/