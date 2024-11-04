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
        //color: Color.fromARGB(255, 150, 117, 181),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 57, 173)
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/create');
            },
            child: const Text('Crea tu perfil', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
