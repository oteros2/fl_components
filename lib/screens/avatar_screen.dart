import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatar"),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: CircleAvatar(
            child: Text("JR"),
            backgroundColor: Colors.white54,),
        )
      ],),
      
      body: const Center(
         child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage("https://img.freepik.com/vector-premium/perfil-avatar-hombre-icono-redondo_24640-14044.jpg"),),
      ),
    );
  }
}