import 'package:bonfire/bonfire.dart';

class Coin extends GameDecoration with Sensor {
  static Future<Sprite> get coin => Sprite.load("tiled/map/coin.png");
  Coin(Vector2 position)
      : super.withSprite(
            sprite: coin, position: position, size: Vector2(64, 64));

  @override
  void onContact(GameComponent component) {
    if (component is Player) {
      removeFromParent();
    }
  }
}
