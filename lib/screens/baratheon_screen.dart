import 'package:fl_componentes/widgets/card_got.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaratheonScreen extends StatelessWidget {
   
  const BaratheonScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Baratheon', style: GoogleFonts.cinzel()), backgroundColor: const Color.fromARGB(255, 230, 183, 39),),
      body: const CardGot(
        imageUrl: 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzU3OjcrxogE3O5Xya_ySKp3d8fU1ymbJebwYgz3bCZMRWuHXLeZR18jZnr9E2E0dBdMjtT7lPjsLTNDOeiXW3MaqSbU3Aq1tBU2BrNGhuyOXtEXLKxZEuu-pM_Q9VLKI87U-KR9ugjmJB/s1600/casa+baratheon.jpg', 
        title: "Casa Baratheon", 
        description: 'Los Baratheon son una casa noble originaria de Bastión de Tormentas. Su emblema es un ciervo coronado sobre un campo dorado, y su lema es: "Nuestra es la furia". Fundada tras la conquista de los Targaryen, esta casa es conocida por su fuerza militar y su temperamento impetuoso. Robert Baratheon, su miembro más célebre, se convirtió en rey tras derrocar a los Targaryen.'),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 230, 183, 39) ,
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context))
    );
  }
}