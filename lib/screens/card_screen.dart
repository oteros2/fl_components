import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart'; 

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10),
            CustomCardTipo2(imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/08/peliculas-star-wars.jpg?tf=3840x', title: "Star Wars",),
            SizedBox(height: 10),
            CustomCardTipo2(imageUrl: 'https://img.rtve.es/imagenes/hechos-historicos-se-inspiro-george-lucas-para-crear-star-wars/01708446638545.jpg', title: "Estrella de la Muerte",),
            SizedBox(height: 10),
            CustomCardTipo2(imageUrl: 'https://sm.ign.com/ign_es/photo/u/upcoming-n/upcoming-new-star-wars-movies-and-tv-shows-2024-release-date_6du5.jpg', title: "The Mandalorian",),
            SizedBox(height: 10),
            CustomCardTipo2(imageUrl: 'https://media.vandal.net/m/10-2024/1/20241019263692_1.jpg', title: "Star Wars",),
            SizedBox(height: 10),
            CustomCardTipo2(imageUrl: 'https://i.blogs.es/c5514f/the-last-jedi/1366_2000.jpg'),
            ],
        ));
  }
}

