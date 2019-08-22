import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //this function fetches the media player and plays the specified notes which are parsed as an argument/input
  void playSound(int noteNumber) {
    final player = AudioCache(); // this calls the player function and this doesnt return any output but takes in arguments
    player.play('note$noteNumber.wav');
  }
//when specifying functions we omit void, if we need an output to be returned
  Expanded coleKey({int noteNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              coleKey(color: Colors.green, noteNumber: 1),
              coleKey(color: Colors.red, noteNumber: 2),
              coleKey(color: Colors.blue, noteNumber: 3),
              coleKey(color: Colors.orange, noteNumber: 4),
              coleKey(color: Colors.yellow, noteNumber: 5),
              coleKey(color: Colors.purple, noteNumber: 6),
              coleKey(color: Colors.pink, noteNumber: 7),
            ],
          ),
          //the display for the button
        ),
      ),
    );
  }
}
