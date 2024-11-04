import 'package:flutter/material.dart';

class perfilScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  perfilScreen(
      {required this.name, required this.age, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Perfil',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 117, 57, 173),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $name', style: TextStyle(fontSize: 20)),
            Divider(color: Colors.black.withOpacity(0)),
            Text('Edad: $age', style: TextStyle(fontSize: 20)),
            Divider(color: Colors.black.withOpacity(0)),
            Text('Ocupación: $occupation', style: TextStyle(fontSize: 20)),
            Divider(color: Colors.black.withOpacity(0)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 117, 57, 173)
            ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Regresar a Inicio', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ],
        ),
      ),
    );
  }
}
