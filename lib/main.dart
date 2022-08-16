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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            onPressed: () {
              playSound(2);
            },
            ),
        ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                playSound(3);
              },
              ),
          ),
            Expanded(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.teal,
                ),
                onPressed: () {
                  playSound(4);
                },
                ),
            ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  ),
              ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.orange,
                    ),
                    onPressed: () {
                      playSound(6); 
                    },
                    ),
                ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple,
                      ),
                      onPressed: () {
                        playSound(7);
                      },
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
