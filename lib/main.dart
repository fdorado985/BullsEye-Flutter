import 'package:flutter/material.dart';

void main() => runApp(BullsEyeApp());

class BullsEyeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
  bool _knockKnockAlertIsVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to my first app!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
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
            FlatButton(
              onPressed: () {
                this._knockKnockAlertIsVisible = true;
                _shoowWhosThere(context);
              },
              child: Text(
                'Knock, Knock',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _shoowWhosThere(BuildContext context) {
    Widget jokeButton = FlatButton(
      onPressed: () {
        Navigator.of(context).pop();
        _knockKnockAlertIsVisible = false;
      },
      child: Text('Nobody, tap the button!'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Knock, Knock...'),
          content: Text('Who\'s there?'),
          actions: [jokeButton],
          elevation: 5,
        );
      },
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
