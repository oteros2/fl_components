import 'package:fl_componentes/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre': 'Andres',
      'apellido': 'Iniesta',
      'emai': 'iniesta@gmail.com',
      'password': '123456',
      'role': 'usuario'
    };

    //bool _chekEnabled = true;
    final ValueNotifier<bool> _chekEnabled = ValueNotifier<bool>(true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                icon: Icons.person_add_rounded,
                obscureText: false,
                formProperty: 'nombre',
                formValues: formValues,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos',
                icon: Icons.person_add_sharp,
                obscureText: false,
                formProperty: 'apellidos',
                formValues: formValues,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Email',
                labelText: 'Email de usuario',
                icon: Icons.email_rounded,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                icon: Icons.password,
                obscureText: true,
                formProperty: 'contraseña',
                formValues: formValues,
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'usuario', child: Text('Usuario')),
                    DropdownMenuItem(value: 'admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'programador', child: Text('Programador')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'usuario';
                  }),
              const SizedBox(height: 20),
              ValueListenableBuilder<bool>(
                  valueListenable: _chekEnabled,
                  builder: (context, value, _) {
                    return Checkbox(
                      value: value,
                      onChanged: (newValue) {
                        _chekEnabled.value = newValue ?? true;
                      },
                    );
                  }),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                  if (!myFormKey.currentState!.validate()) {
                    print('Formluario no valido');
                    return;
                  }
                },
                child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Enviar'))),
              )
            ],
          ),
        ),
      ),
    );
  }
}