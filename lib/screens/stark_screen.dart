import 'package:fl_componentes/widgets/card_got.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StarkScreen extends StatelessWidget {
   
  const StarkScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stark', style: GoogleFonts.cinzel()), backgroundColor: const Color.fromARGB(255, 124, 124, 124),),
      body: const CardGot(
        imageUrl: 'https://lossietereinos.com/wp-content/uploads/2012/10/wallpaper-stark-1600.jpg', 
        title: "Casa Stark", 
        description: 'Los Stark son una de las casas más antiguas y respetadas de Poniente, gobernantes del Norte desde su fortaleza en Invernalia. Su emblema es un lobo huargo gris sobre un campo blanco, y su lema: "Se acerca el invierno". Representan la resistencia, la lealtad y la conexión con las raíces ancestrales. Los Stark valoran el honor por encima de todo, aunque eso los hace vulnerables en el juego político.'),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 124, 124, 124),
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context))
    );
  }
}