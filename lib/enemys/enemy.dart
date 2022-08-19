import 'package:bonfire/bonfire.dart';
import 'package:escribo_teste_2/enemys/enemy_controller.dart';
import 'package:escribo_teste_2/enemys/enemy_sprite_sheet.dart';

class ColorEnemy {
  static SimpleDirectionAnimation pink =
      EnemyPinkSpritSheet.simpleDirectionAnimation;
  static SimpleDirectionAnimation red =
      EnemyRedSpritSheet.simpleDirectionAnimation;
  static SimpleDirectionAnimation yellow =
      EnemyYellowSpritSheet.simpleDirectionAnimation;
}

class GhostEnemy extends SimpleEnemy
    with
        ObjectCollision,
        AutomaticRandomMovement,
        UseStateController<GhostEnemyController> {
  GhostEnemy(
      {required Vector2 position, required SimpleDirectionAnimation colorEnemy})
      : super(
            position: position,
            size: Vector2(64, 64),
            speed: 120,
            animation: colorEnemy) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(48, 48), align: Vector2(8, 8))
    ]));
  }

  void execAttack(double Damage) {
    simpleAttackMelee(
      damage: 1,
      size: Vector2(64, 64),
    );
  }
}
