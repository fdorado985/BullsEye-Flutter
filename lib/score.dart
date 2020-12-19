import 'package:BullsEye/text_styles.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  Score({
    Key key,
    @required this.totalScore,
    @required this.round,
    @required this.onStartOver,
  }) : super(key: key);

  final int totalScore;
  final int round;
  final VoidCallback onStartOver;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: onStartOver,
          child: Text(
            'Start Over',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
          ),
          child: Column(
            children: [
              Text(
                'Score: ',
                style: LabelTextStyle.bodyText1(context),
              ),
              Text(
                '$totalScore',
                style: ScoreNumberTextStyle.headline4(context),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 32.0,
            right: 32.0,
          ),
          child: Column(
            children: [
              Text(
                'Round: ',
                style: LabelTextStyle.bodyText1(context),
              ),
              Text(
                '$round',
                style: ScoreNumberTextStyle.headline4(context),
              ),
            ],
          ),
        ),
        FlatButton(
          onPressed: () {},
          child: Text(
            'Info',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
