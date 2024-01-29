import 'package:flutter/material.dart';
import 'package:tune_player/models/tune_model.dart';
import 'package:tune_player/widgets/tune_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<TuneModel> Tune = const [
    TuneModel(color: Color.fromARGB(255, 132, 232, 26), audio: 'note1.wav'),
    TuneModel(color: Color.fromRGBO(231, 162, 24, 1), audio: 'note2.wav'),
    TuneModel(color: Color.fromRGBO(229, 142, 43, 1), audio: 'note3.wav'),
    TuneModel(color: Color.fromARGB(255, 249, 91, 0), audio: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 236, 120, 70), audio: 'note5.wav'),
    TuneModel(color: Color.fromARGB(255, 235, 90, 0), audio: 'note6.wav'),
    TuneModel(color: Color.fromARGB(255, 243, 21, 21), audio: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tune Player'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        children: Tune.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }
}
