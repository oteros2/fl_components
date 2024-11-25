import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void displayDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Aviso"),
            shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5)),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Este es el contenido del mensaje de alerta"),
                SizedBox(height: 20),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text("Cerrar"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => displayDialog(context),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Text("Mostrar Alerta", style: TextStyle(fontSize: 20)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
