import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String audio;
  const TuneModel({required this.color, required this.audio});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
