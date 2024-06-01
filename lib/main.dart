import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  void playsound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(int soundNumber, Color c) {
    return (Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: c,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
        onPressed: () {
          playsound(soundNumber);
        },
        child: const SizedBox(
          height: 30,
          width: 100,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(1, Colors.indigo),
            buildKey(2, Colors.teal),
            buildKey(3, Colors.purple),
            buildKey(4, Colors.green),
            buildKey(5, Colors.red),
            buildKey(6, Colors.orange),
            buildKey(7, Colors.blueAccent),
          ],
        )),
      ),
    );
  }
}
