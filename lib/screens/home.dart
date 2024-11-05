import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crear perfil',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 117, 57, 173),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centra el contenido verticalmente
            children: [

              // Texto de bienvenida
              Text(
                'Por favor, crea un usuario para iniciar.',
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center, // Centra el texto
              ),

          // Divider
          Divider(color: Colors.black.withOpacity(0)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 57, 173)
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/create');
            },
            child: const Text('Crea tu perfil', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
          ),
        ]),
      ),
    ));
  }
}
