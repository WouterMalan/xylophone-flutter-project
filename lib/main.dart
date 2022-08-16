import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                   player.setAsset('assets/note1.wav');
                  player.play();
                },
              ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.yellow,
          ),
          onPressed: () {
            final player = AudioPlayer();
            player.setAsset('assets/note2.wav');
            player.play();
          },
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              final player = AudioPlayer();
              player.setAsset('assets/note3.wav');
              player.play();
            },
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.teal,
              ),
              onPressed: () {
                final player = AudioPlayer();
                player.setAsset('assets/note4.wav');
                player.play();
              },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: () {
                  final player = AudioPlayer();
                  player.setAsset('assets/note5.wav');
                  player.play();
                },
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    final player = AudioPlayer();
                    player.setAsset('assets/note6.wav');
                    player.play();
                  },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    onPressed: () {
                      final player = AudioPlayer();
                      player.setAsset('assets/note7.wav');
                      player.play();
                    },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
