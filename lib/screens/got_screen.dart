import 'package:fl_componentes/widgets/card_got.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GotScreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String description;

  const GotScreen({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name, style: GoogleFonts.cinzel()),
          backgroundColor: const Color.fromARGB(255, 230, 183, 39),
        ),
        body:  CardGot(
            title: name,
            imageUrl: imageUrl,
            description: description),
        floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromARGB(255, 230, 183, 39),
            child: const Icon(Icons.arrow_back_outlined),
            onPressed: () => Navigator.pop(context)));
  }
}
