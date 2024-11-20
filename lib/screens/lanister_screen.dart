import 'package:fl_componentes/widgets/card_got.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanisterScreen extends StatelessWidget {
   
  const LanisterScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lanister', style: GoogleFonts.cinzel()), backgroundColor: const Color.fromARGB(255, 161, 43, 35),),
      body: const CardGot(
        imageUrl: 'https://m.media-amazon.com/images/I/71m2wG7uqKL.jpg', 
        title: "Casa Lanister", 
        description: 'La Casa Lannister, de Roca Casterly, es una de las casas más ricas y poderosas de Poniente, gracias a sus vastos recursos de oro. Su emblema es un león dorado sobre un campo carmesí, y su lema oficial es: "Oye mi rugido", aunque es más conocido su dicho no oficial: "Un Lannister siempre paga sus deudas". Los Lannister son astutos, ambiciosos y expertos en política, dejando una huella imborrable en el destino de los Siete Reinos.'),
    );
  }
}