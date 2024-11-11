import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: AppTheme.primary,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.add_ic_call_outlined, color: Colors.white),
            title: Text('Título de la tarjeta'),
            subtitle: Text('Officia mollit reprehenderit laboris aliqua tempor nulla veniam consequat aute. Sit exercitation ullamco eu sunt fugiat mollit consectetur ea consectetur. Non consequat minim Lorem nisi cupidatat esse Lorem deserunt excepteur in. Deserunt cillum sunt in aute in irure magna enim voluptate. Lorem deserunt in amet amet. Commodo minim sunt'),
          )
        ],
      ),  
    );
  }
}