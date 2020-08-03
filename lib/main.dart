import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.mp3');
  }

  Expanded buildButton({Color color, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text('$text'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(child: Text('Moody')),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 0 , 0, 0),
              child: Text(
                'Enjoy Music With Your Mood !',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                letterSpacing: 1.5
              ),),
            ),
            SizedBox(
              height: 5,
            ),
            buildButton(color: Colors.red, soundNumber: 1, text: 'Action Mood'),
            buildButton(color: Colors.orange, soundNumber: 2,text: 'EDM Mood'),
            buildButton(color: Colors.yellow, soundNumber: 3,text: 'Happy Mood'),
            buildButton(color: Colors.blue, soundNumber: 4,text: 'Inspiring Mood'),
            buildButton(  color: Colors.green, soundNumber: 5,text: 'Relaxing Mood'),
            buildButton(color: Colors.purple, soundNumber: 6, text: 'Sad Mood'),
          ],
        )),
      ),
    );
  }
}
