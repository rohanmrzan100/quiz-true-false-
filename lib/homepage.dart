import 'package:flutter/material.dart';
import 'quizLogic.dart';
import 'questions.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<Widget> scoreKeeper = [];

  String showscreen() {
    if (questionCount >= 10) {
      setState(() {
        questionCount = 0;
        scoreKeeper = [];
      });
      return ('The quiz is over.Press any key to restart');
    } else {
      return (queAns[questionCount].questionText);
    }
  }

  Icon addCheckIcons() {
    questionCount++;
    scoreKeeper.add((Icon(Icons.check, color: Colors.green)));
  }

  Icon addCloseIcons() {
    questionCount++;
    scoreKeeper.add((Icon(Icons.close, color: Colors.red)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Center(
                child: Text(
          showscreen(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ))),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: FlatButton(
              child: Text('True',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              color: Colors.green,
              onPressed: () {
                setState(() {
                  if (queAns[questionCount].answerbool == true) {
                    addCheckIcons();
                  } else {
                    addCloseIcons();
                  }
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: FlatButton(
              child: Text('False',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              color: Colors.red,
              onPressed: () {
                setState(() {
                  if (queAns[questionCount].answerbool == false) {
                    addCheckIcons();
                  } else {
                    addCloseIcons();
                  }
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
