import 'package:bonfire/bonfire.dart';

var amountCoin = 4;

class Coin extends GameDecoration with Sensor {
  static Future<Sprite> get coinSprite => Sprite.load("tiled/map/coin.png");
  Coin(Vector2 position)
      : super.withSprite(
            sprite: coinSprite, position: position, size: Vector2(64, 64));

  @override
  void onContact(GameComponent component) {
    if (component is Player) {
      amountCoin = amountCoin + 1;
      (amountCoin == 180 ? print("Paraben você venceu!") : removeFromParent());
    }
  }
}
