import 'package:BullsEye/text_styles.dart';
import 'package:flutter/material.dart';

class Prompt extends StatelessWidget {
  Prompt({@required this.targetValue});

  final int targetValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'PUT THE BULLSEYE AS CLOSE AS YOU CAN TO',
          style: LabelTextStyle.bodyText1(context),
        ),
        Text(
          '$targetValue',
          style: TargetTextStyle.bodyText1(context),
        ),
      ],
    );
  }
}
