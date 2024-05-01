import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BackgroundShapes extends StatefulWidget {
  const BackgroundShapes({super.key});

  @override
  State<BackgroundShapes> createState() => _BackgroundShapesState();
}

class _BackgroundShapesState extends State<BackgroundShapes>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            spawnMaxRadius: 40,
            spawnMinSpeed: 15,
            spawnMaxSpeed: 40,
            particleCount: 80,
            spawnMinRadius: 15,
          ),
        ),
        child: Text('DD'),
      ),
    );
  }
}
