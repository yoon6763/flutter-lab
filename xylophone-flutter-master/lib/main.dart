import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:korean_words/korean_words.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  var colorList = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.teal,
    Colors.blue,
    Colors.purple
  ];

  void playSound(int idx) => new AudioCache().play('note$idx.wav');

  Widget buildKey(int idx) {
    return Expanded(
      child: FlatButton(
        color: colorList[idx-1],
        onPressed: () {
          playSound(idx);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    generateKoreanWords(wordCount: 4).take(20).forEach(print);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(1),
            buildKey(2),
            buildKey(3),
            buildKey(4),
            buildKey(5),
            buildKey(6),
            buildKey(7),
          ],
        )),
      ),
    );
  }
}
