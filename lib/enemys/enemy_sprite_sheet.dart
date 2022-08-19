import 'package:bonfire/bonfire.dart';

class EnemyPinkSpritSheet {
  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
      "tiled/enemys/enemy_pink/enemy_pink_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
      "tiled/enemys/enemy_pink/enemy_pink_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkTop => SpriteAnimation.load(
      "tiled/enemys/enemy_pink/enemy_pink_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkBottom => SpriteAnimation.load(
      "tiled/enemys/enemy_pink/enemy_pink_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
          idleRight: walkLeft,
          runRight: walkRight,
          runLeft: walkLeft,
          runUp: walkTop,
          runDown: walkBottom);
}

class EnemyRedSpritSheet {
  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
      "tiled/enemys/enemy_red/enemy_red_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
      "tiled/enemys/enemy_red/enemy_red_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkTop => SpriteAnimation.load(
      "tiled/enemys/enemy_red/enemy_red_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkBottom => SpriteAnimation.load(
      "tiled/enemys/enemy_red/enemy_red_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
          idleRight: walkLeft,
          runRight: walkRight,
          runLeft: walkLeft,
          runUp: walkTop,
          runDown: walkBottom);
}

class EnemyYellowSpritSheet {
  static Future<SpriteAnimation> get walkLeft => SpriteAnimation.load(
      "tiled/enemys/enemy_yellow/enemy_yellow_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkRight => SpriteAnimation.load(
      "tiled/enemys/enemy_yellow/enemy_yellow_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkTop => SpriteAnimation.load(
      "tiled/enemys/enemy_yellow/enemy_yellow_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static Future<SpriteAnimation> get walkBottom => SpriteAnimation.load(
      "tiled/enemys/enemy_yellow/enemy_yellow_walk_bottom.png",
      SpriteAnimationData.sequenced(
          amount: 2, stepTime: 0.1, textureSize: Vector2(64, 64)));

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
          idleRight: walkLeft,
          runRight: walkRight,
          runLeft: walkLeft,
          runUp: walkTop,
          runDown: walkBottom);
}
