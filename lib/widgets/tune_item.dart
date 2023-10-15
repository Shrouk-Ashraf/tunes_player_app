import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player_app/models/tunes_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({Key? key, required this.tune}) : super(key: key);

  final TunesModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          tune.playSound();
        },
        child: Container(
          color: tune.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
