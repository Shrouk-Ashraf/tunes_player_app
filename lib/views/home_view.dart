import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';
import 'package:tunes_player_app/widgets/tune_item.dart';

class HomePage extends StatelessWidget {
   const HomePage({Key? key}) : super(key: key);

  final List<TunesModel>  tune =const [
     TunesModel(color: Colors.red, sound: "sounds/note1.wav"),
    TunesModel(color: Colors.orange, sound: "sounds/note2.wav"),
    TunesModel(color: Colors.green, sound: "sounds/note3.wav"),
    TunesModel(color: Colors.blueGrey, sound: "sounds/note4.wav"),
    TunesModel(color: Colors.blue, sound: "sounds/note5.wav"),
    TunesModel(color: Colors.deepPurple, sound: "sounds/note6.wav"),
    TunesModel(color: Colors.yellow, sound: "sounds/note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff243139),
        title: const Text("Flutter Tune",),
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children:
          tune.map((e) => TuneItem(tune: e,)).toList()
        ,
      )
    );
  }
}
