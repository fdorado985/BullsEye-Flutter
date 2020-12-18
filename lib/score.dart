import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  Score({
    Key key,
    @required this.totalScore,
    @required this.round,
  }) : super(key: key);

  final int totalScore;
  final int round;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlatButton(
          onPressed: () {},
          child: Text(
            'Start Over',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Text('Score: '),
        Text('$totalScore'),
        Text('Round: '),
        Text('$round'),
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
