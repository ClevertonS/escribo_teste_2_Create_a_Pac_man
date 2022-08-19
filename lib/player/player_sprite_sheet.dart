import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static Future<SpriteAnimation> get idle => SpriteAnimation.load(
      "tiled/player/idle.png",
      SpriteAnimationData.sequenced(
          amount: 9, stepTime: 0.075, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
      "tiled/player/walking-left.png",
      SpriteAnimationData.sequenced(
          amount: 3, stepTime: 0.075, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
      "tiled/player/walking-right.png",
      SpriteAnimationData.sequenced(
          amount: 3, stepTime: 0.075, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkTop => SpriteAnimation.load(
      "tiled/player/walking-top.png",
      SpriteAnimationData.sequenced(
          amount: 3, stepTime: 0.075, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkBottom => SpriteAnimation.load(
      "tiled/player/walking-bottom.png",
      SpriteAnimationData.sequenced(
          amount: 3, stepTime: 0.075, textureSize: Vector2(64, 64)));

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
          idleRight: idle,
          runRight: walkRight,
          runLeft: walkLeft,
          runUp: walkTop,
          runDown: walkBottom);
}
