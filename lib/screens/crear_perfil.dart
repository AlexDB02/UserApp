import 'package:flutter/material.dart';

class CrearPerfilScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();

  CrearPerfilScreen({super.key});

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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            width: double.infinity, // Ancho completo
            padding: const EdgeInsets.all(30), // Padding interno
            decoration: BoxDecoration(
              color: Colors.white, // Fondo blanco
              borderRadius: BorderRadius.circular(20), // Bordes redondeados
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 5), // Sombra sutil
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Que solo ocupe el espacio necesario
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Campo para Nombre
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Nombre',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173), width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173)),
                      ),
                    ),
                  ),
                ),

                // Campo para Edad
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Edad',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173), width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173)),
                      ),
                    ),
                  ),
                ),

                // Campo para Ocupación
                Container(
                  height: 70,
                  width: double.infinity,
                  margin: EdgeInsets.only(bottom: 15),
                  child: TextFormField(
                    controller: occupationController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Ocupación',
                      labelStyle: TextStyle(color: Color.fromARGB(255, 117, 57, 173)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173), width: 2.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color.fromARGB(255, 117, 57, 173)),
                      ),
                    ),
                  ),
                ),

                // Botón de Guardar y Ver Perfil
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 117, 57, 173),
                  ),
                  onPressed: () {
                    // Validaciones
                    if (nameController.text.trim().isEmpty ||
                        ageController.text.trim().isEmpty ||
                        occupationController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Por favor, complete los campos antes de continuar.'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    } else {
                      final ageText = ageController.text.trim();
                      final age = int.tryParse(ageText);

                      if (age == null || age <= 0) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Por favor, ingrese una edad válida.'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      } else {
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
                      }
                    }
                  },
                  child: Text(
                    'Ver perfil',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
