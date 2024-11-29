import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              //initialValue: 'Jose Oteros',
              textCapitalization: TextCapitalization.words,
              onChanged: (value){
                print('value: $value');
              },
              validator: (value){
                if(value!.length < 3){
                  return 'Mínimo 3 caracteres';
                }
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: 'Nombre y apellidos',
                labelText: 'Nombre y apellidos',
                helperText: 'Solo letras',
                suffixIcon: const Icon(Icons.person),
                icon: const Icon(Icons.verified_user_sharp),
                /*border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                )*/
              ),
            )],
        ),
      ),
    );
  }
}
