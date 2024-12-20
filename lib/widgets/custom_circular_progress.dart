import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}