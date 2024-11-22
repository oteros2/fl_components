import 'package:fl_componentes/screens/got_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Listview2Screen extends StatelessWidget {
  final options = [
    {
      'title': 'Casa Targarian',
      'image':
          'https://historiacalamitatum312963679.wordpress.com/wp-content/uploads/2020/03/anuncian_fecha_de_estreno_para_precuela_de_game_of_thrones_2_0-e1583106888926.jpg?w=1200',
      'description':
          'La Casa Targaryen es una dinastía ancestral de Valyria, conocida por su dominio sobre los dragones y su lema: "Fuego y Sangre". Gobernaron los Siete Reinos durante casi 300 años tras la Conquista de Aegon. Sus miembros suelen tener cabellos plateados y ojos violetas, características valyrias. Su legado está marcado por la ambición, la pasión y la tragedia.',
      'color' : Colors.black,
      'trailing' : 'assets/casa-del-dragon.png'
    },
    {
      'title': 'Casa Stark',
      'image':
          'https://lossietereinos.com/wp-content/uploads/2012/10/wallpaper-stark-1600.jpg',
      'description':
          'Los Stark son una de las casas más antiguas y respetadas de Poniente, gobernantes del Norte desde su fortaleza en Invernalia. Su emblema es un lobo huargo gris sobre un campo blanco, y su lema: "Se acerca el invierno". Representan la resistencia, la lealtad y la conexión con las raíces ancestrales. Los Stark valoran el honor por encima de todo, aunque eso los hace vulnerables en el juego político.',
      'color' : const Color.fromARGB(255, 107, 107, 107),
      'trailing' : 'assets/lobo-rigido.png'
    },
    {
      'title': 'Casa Lannister',
      'image': 'https://m.media-amazon.com/images/I/71m2wG7uqKL.jpg',
      'description':
          'La Casa Lannister, de Roca Casterly, es una de las casas más ricas y poderosas de Poniente, gracias a sus vastos recursos de oro. Su emblema es un león dorado sobre un campo carmesí, y su lema oficial es: "Oye mi rugido", aunque es más conocido su dicho no oficial: "Un Lannister siempre paga sus deudas". Los Lannister son astutos, ambiciosos y expertos en política, dejando una huella imborrable en el destino de los Siete Reinos.',
      'color' : const Color.fromARGB(255, 150, 29, 29),
      'trailing' : 'assets/consiguio.png'
      
    },
    {
      'title': 'Casa Baratheon',
      'image':
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjzU3OjcrxogE3O5Xya_ySKp3d8fU1ymbJebwYgz3bCZMRWuHXLeZR18jZnr9E2E0dBdMjtT7lPjsLTNDOeiXW3MaqSbU3Aq1tBU2BrNGhuyOXtEXLKxZEuu-pM_Q9VLKI87U-KR9ugjmJB/s1600/casa+baratheon.jpg',
      'description':
          'Los Baratheon son una casa noble originaria de Bastión de Tormentas. Su emblema es un ciervo coronado sobre un campo dorado, y su lema es: "Nuestra es la furia". Fundada tras la conquista de los Targaryen, esta casa es conocida por su fuerza militar y su temperamento impetuoso. Robert Baratheon, su miembro más célebre, se convirtió en rey tras derrocar a los Targaryen.',
      'color' : const Color.fromARGB(255, 213, 180, 35),
      'trailing' : 'assets/baratheon.png'
    },
  ];

  Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Juego de Tronos', style: GoogleFonts.cinzel()),
          backgroundColor: Colors.amber,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              final casa = options[index];
              return ListTile(
                  trailing: Image.asset(casa['trailing'] as String),
                  title: Text(casa['title'] as String,  style: GoogleFonts.cinzel(fontSize: 25)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GotScreen(
                          name: casa['title'] as String,
                          imageUrl: casa['image'] as String,
                          description: casa['description'] as String,
                          color: casa['color'] as Color,
                        ),
                      ),
                    );
                  });
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: options.length));
  }
}
