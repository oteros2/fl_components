import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(image: NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/08/peliculas-star-wars.jpg?tf=3840x')),
          ],
      ),
    );
  }
}
