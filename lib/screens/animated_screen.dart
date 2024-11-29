import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.amber;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Container')),
      body: Center(
        child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.play_arrow, size: 35),
          onPressed: () {
            setState(() {
              _height = (Random().nextDouble() * 500) + 10;
              _width = (Random().nextDouble() * 500) + 10;
              _borderRadius = BorderRadius.circular(Random().nextDouble() * 50);
              _color = Colors.primaries[Random().nextInt(Colors.primaries.length)];
            });
          }),
    );
  }
}
