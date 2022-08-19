import 'package:escribo_teste_2/enemys/enemy.dart';
import 'package:bonfire/bonfire.dart';

class GhostEnemyController extends StateController<GhostEnemy> {
  @override
  void update(double dt, GhostEnemy component) {
    if (!gameRef.sceneBuilderStatus.isRunning) {
      component.seeAndMoveToPlayer(
          closePlayer: (player) {
            component.execAttack(1);
          },
          radiusVision: 200,
          notObserved: () {
            component.runRandomMovement(
              dt,
              speed: component.speed * 0.75,
              maxDistance: 20 * 64,
            );
          });
    }
  }
}
