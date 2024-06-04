import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_flame/game/flame_alpha_game.dart';

class FlameAlpha extends StatefulWidget {
  const FlameAlpha({super.key});

  @override
  State<FlameAlpha> createState() => _FlameAlphaState();
}

class _FlameAlphaState extends State<FlameAlpha> {
  @override
  Widget build(BuildContext context) {
    return GameWidget(
      game: FlameAlphaGame(),
    );
  }
}
