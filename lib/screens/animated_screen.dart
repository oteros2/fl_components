import 'package:fl_componentes/theme/app_theme.dart';
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
      appBar: AppBar(
        title: const Text('Animated Container')
      ),
      body: Center(
         child: Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: AppTheme.primary,
            borderRadius: _borderRadius
          ),
         ),
      ),
    );
  }
}