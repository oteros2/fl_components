import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              padding: const EdgeInsets.all(20),
              child: Text(title , style: GoogleFonts.cinzel(fontSize: 30)),
              ),
          FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/got.gif'),
            width: double.infinity,
            height: 400,
            fit:BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 1500),
            ),
              Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.all(20),
              child: Text(description, 
              style: GoogleFonts.cinzel(fontSize: 14),
              textAlign: TextAlign.justify,),
              )
          ],
      ),
    );
  }
}
