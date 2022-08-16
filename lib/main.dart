import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    final player = AudioPlayer();
    player.setAsset('assets/note$soundNumber.wav');
    player.play();
  }
Expanded buildKey(int soundNumber, Color color)
{
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        playSound(soundNumber);
      },
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
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
