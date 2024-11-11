import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.add_ic_call_outlined, color: AppTheme.primary),
            title: Text('Título de la tarjeta'), 
            subtitle: Text('Officia mollit reprehenderit laboris aliqua tempor nulla veniam consequat aute. Sit exercitation ullamco eu sunt fugiat mollit consectetur ea consectetur. Non consequat minim Lorem nisi cupidatat esse Lorem deserunt excepteur in. Deserunt cillum sunt in aute in irure magna enim voluptate. Lorem deserunt in amet amet. Commodo minim sunt'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
              onPressed: (){}, 
              child: const Text('Cancelar')),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: TextButton(
                onPressed: (){}, 
                child: const Text('Aceptar')),
              ),
            ],
          )
        ],
      ),  
    );
  }
}