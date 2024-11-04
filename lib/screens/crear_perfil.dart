import 'package:flutter/material.dart';

class crearPerfilScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();

  crearPerfilScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            // Field de Nombre
            Container(
                height: 70,
                width: 650,
                child: TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173),
                              width: 2.0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173))),
                      labelText: 'Nombre'),
                )),

            // Field de Edad
            Container(
                height: 70,
                width: 650,
                child: TextFormField(
                  controller: ageController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173),
                              width: 2.0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173))),
                      labelText: 'Edad'),
                )),

            // Field para Ocupacion
            Container(
                height: 70,
                width: 650,
                child: TextFormField(
                  controller: occupationController,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle:
                          TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173),
                              width: 2.0)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 117, 57, 173))),
                      labelText: 'Ocupacion'),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 57, 173)
            ),
              onPressed: () {
                final profileData = {
                  'name': nameController.text,
                  'age': ageController.text,
                  'occupation': occupationController.text,
                };
                Navigator.pushNamed(
                  context,
                  '/profile',
                  arguments: profileData,
                );
              },
              child: const Text('Guardar y ver verfil', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
