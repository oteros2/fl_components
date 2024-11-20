import 'package:flutter/material.dart';

class CardGot extends StatelessWidget {
  
  final String imageUrl;
  final String title;
  final String description;

  const CardGot({super.key, required this.imageUrl,  required this.title,required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(title),
              ),
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/carga.gif'),
            width: double.infinity,
           
            fit:BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1500),
            ),
              Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
              child: Text(description),
              )
          ],
      ),
    );
  }
}
