import 'package:flutter/material.dart';

class LisviewBuilderScreen extends StatelessWidget {
   
  const LisviewBuilderScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10 ,
        itemBuilder: (BuildContext context, int index){
          return FadeInImage(
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
            placeholder: const AssetImage("assets/carga.gif"), 
            image: NetworkImage('https://picsum.photos/500/300?image=$index')
            );
        } ,)
      );
  }
}