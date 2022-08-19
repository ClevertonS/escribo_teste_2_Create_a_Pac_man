import 'package:bonfire/bonfire.dart';
import 'package:escribo_teste_2/coin/coin.dart';
import 'package:escribo_teste_2/enemys/enemy.dart';
import 'package:escribo_teste_2/enemys/enemy_controller.dart';
import 'package:escribo_teste_2/player/player.dart';
import 'package:flutter/material.dart';

double tileSize = 64;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BonfireInjector().putFactory((i) => GhostEnemyController());
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Teste(),
    );
  }
}

class Teste extends StatelessWidget {
  const Teste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return BonfireTiledWidget(
        joystick: Joystick(
            directional: JoystickDirectional(),
            keyboardConfig: KeyboardConfig(enable: true)), // required
        map:
            TiledWorldMap('tiled/map/Mapa-Teste-Escribo.json', objectsBuilder: {
          'ghost_red': (properties) => GhostEnemy(
              position: properties.position, colorEnemy: ColorEnemy.red),
          'ghost_yellow': (properties) => GhostEnemy(
              position: properties.position, colorEnemy: ColorEnemy.yellow),
          'ghost_pink': (properties) => GhostEnemy(
              position: properties.position, colorEnemy: ColorEnemy.pink),
          'coin': (properties) => Coin(properties.position)
        }),
        player: PacMan(Vector2(17 * tileSize, 10 * tileSize)),
      );
    });
  }
}
