import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Nombre',
              labelText: 'Nombre',
              helperText: 'Solo letras',
              icon: Icons.person_pin_rounded,
              suffixIcon: Icons.person,
            ),
            SizedBox(height: 30,),
             CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              helperText: 'Solo letras',
              icon: Icons.person_pin_rounded,
              suffixIcon: Icons.person,
            ),
            ],
        ),
      ),
    );
  }
}

