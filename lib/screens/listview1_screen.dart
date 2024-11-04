import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {

final options = const['Targarian', 'Stark', 'Lanister', 'Baratheon'];
   
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView tipo 1'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Hola mundo'),
          ),
           ListTile(
            leading: Icon(Icons.face),
            title: Text('Hola mundo'),
          ),
           ListTile(
            leading: Icon(Icons.dangerous),
            title: Text('Hola mundo'),
          ),
           ListTile(
            leading: Icon(Icons.label_important),
            title: Text('Hola mundo'),
          ),
        ],
      )
    );
  }
}