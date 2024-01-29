import 'package:flutter/material.dart';
import 'package:tune_player/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Stack(
          children: [
            Container(
              height: 100,
              color: tune.color,
            ),
            Padding(
              padding: EdgeInsets.only(left: 90.0, right: 90.0, top: 60.0),
              child: Container(
                width: 250,
                height: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
