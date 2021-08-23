import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(int inputSound, Color inputColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 400.0,
        height: 80.0,
        child: Card(

        color: inputColor;
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: FlatButton(
            onPressed: () {
              playSound(inputSound);
            },
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Xylophone - Idan'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),

                //Red
                buildKey(1, Colors.red),

                //Orange
                buildKey(2, Colors.orange),

                //Yellow
                buildKey(3, Colors.yellow),

                //Green
                buildKey(4, Colors.green),

                //Teal
                buildKey(5, Colors.teal),

                //Blue
                buildKey(6, Colors.blue),

                //Purple
                buildKey(7, Colors.purple),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
