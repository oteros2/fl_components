import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  
  final String imageUrl;
  final String? title;

  const CustomCardTipo2({super.key, required this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            //image: NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2019/08/peliculas-star-wars.jpg?tf=3840x'),
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/carga.gif'),
            width: double.infinity,
            height: 260,
            fit:BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 3000),
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(title ?? 'Desconocido')
              )
          ],
      ),
    );
  }
}
