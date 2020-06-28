import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  Expanded expandedwig(int musicname, String musictone, Color musicColor) {
    return Expanded(
      child: FlatButton(
          color: musicColor,
          onPressed: () {
            final player = AudioCache();
            player.play('note$musicname.wav');
          },
          child: Text('$musictone')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandedwig(1, 'do', Colors.blue),
              expandedwig(2, 'we', Colors.red),
              expandedwig(3, 're', Colors.orange),
              expandedwig(4, 'mi', Colors.yellow),
              expandedwig(5, 'fa', Colors.lime),
              expandedwig(6, 'so', Colors.purple),
              expandedwig(7, 'ft', Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
