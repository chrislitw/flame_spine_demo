import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame_spine/flame_spine.dart';
import 'package:flutter_flame/game/spine_boy.dart';

class FlameAlphaGame extends FlameGame with KeyboardEvents {

  late SpineBoy _spineBoy;


  FlameAlphaGame() {
    pauseWhenBackgrounded = false;
  }

  @override
  Future<void> onLoad() async {
    await initSpineFlutter();
    _spineBoy = SpineBoy();
    add(_spineBoy!);

    add(FpsTextComponent(position: Vector2(20, 20), scale: Vector2(0.8, 0.8)));

    super.onLoad();
  }

  @override
  void onRemove() {
    processLifecycleEvents();
    Flame.images.clearCache();
    Flame.assets.clearCache();
    super.onRemove();
  }
}
