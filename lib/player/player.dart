import 'package:bonfire/bonfire.dart';
import 'package:escribo_teste_2/player/player_sprite_sheet.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position)
      : super(
            position: position,
            size: Vector2(64, 64),
            animation: PlayerSpriteSheet.simpleDirectionAnimation,
            life: 1,
            speed: 60) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(48, 48), align: Vector2(8, 8))
    ]));
  }
  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    speed = 150 * event.intensity;
    super.joystickChangeDirectional(event);
  }

  @override
  void die() {
    removeFromParent();
    gameRef.add(AnimatedObjectOnce(
      animation: PlayerSpriteSheet.die,
      position: position,
      size: Vector2(64, 64),
    ));
    super.die();
  }
}
