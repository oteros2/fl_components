import 'package:fl_componentes/widgets/card_got.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TargarianScreen extends StatelessWidget {
   
  const TargarianScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Targarian', style: GoogleFonts.cinzel()), backgroundColor: Colors.black,),
      body: const CardGot(
      imageUrl: 'https://historiacalamitatum312963679.wordpress.com/wp-content/uploads/2020/03/anuncian_fecha_de_estreno_para_precuela_de_game_of_thrones_2_0-e1583106888926.jpg?w=1200', 
      title: "Casa Targarian", 
      description: 'La Casa Targaryen es una dinastía ancestral de Valyria, conocida por su dominio sobre los dragones y su lema: "Fuego y Sangre". Gobernaron los Siete Reinos durante casi 300 años tras la Conquista de Aegon. Sus miembros suelen tener cabellos plateados y ojos violetas, características valyrias. Su legado está marcado por la ambición, la pasión y la tragedia.'),
    );
  }
}