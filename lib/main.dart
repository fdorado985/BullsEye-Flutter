import 'package:BullsEye/control.dart';
import 'package:BullsEye/prompt.dart';
import 'package:BullsEye/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BullsEyeApp());

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      title: 'BullsEye',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: GamePage(
        title: 'BullsEye',
      ),
    );
  }
}

class GamePage extends StatefulWidget {
  GamePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  bool _alertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Prompt(targetValue: 100),
            Control(),
            FlatButton(
              onPressed: () {
                this._alertIsVisible = true;
                _showAlert(context);
                print('Button pressed!');
              },
              child: Text(
                'Hit Me!',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            Score(totalScore: 0, round: 1),
          ],
        ),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    Widget okButton = FlatButton(
      onPressed: () {
        Navigator.of(context).pop();
        this._alertIsVisible = false;
        print("Awesome pressed! $_alertIsVisible");
      },
      child: Text('Awesome'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Hello there!'),
          content: Text('This is my first pop-up.'),
          actions: [
            okButton,
          ],
          elevation: 5,
        );
      },
    );
  }
}
