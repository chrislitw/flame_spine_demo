import 'dart:math';

// import 'package:casino_slots/flame/extensions/extensions.dart';
import 'package:flame/components.dart';
import 'package:flame_spine/flame_spine.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flame/game/flame_alpha_game.dart';

class SpineBoy extends PositionComponent with HasGameRef<FlameAlphaGame> {
  SpineBoy();

  late final SpineComponent spine;

  @override
  Future<void> onLoad() async {
    spine = await SpineComponent.fromAssets(
      atlasFile: 'assets/spine/snowglobe/snowglobe-pro.atlas',
      skeletonFile: 'assets/spine/snowglobe/snowglobe-pro.json',
      scale: Vector2(0.4, 0.4),
      anchor: Anchor.center,
      position: gameRef.size / 2 - size / 2,
    );

    spine.animationState.setAnimationByName(0, 'idle', true);
    add(spine);
  }

  @override
  void onRemove() {
    // TODO: implement onRemove
    spine?.dispose();
    super.onRemove();
  }
}
