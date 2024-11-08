import 'package:flutter/material.dart';
import 'package:fl_componentes/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Componentes de Flutter'),
      backgroundColor : Colors.blueAccent,
      elevation : 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.dangerous_rounded),
          title: const Text('Nombre de ruta'),
          onTap: () {
            final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
            Navigator.push(context, route);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: 5,
      ),
    );
  }
}
