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
        backgroundColor: Color.fromARGB(255, 227, 131, 6),
      ),
      
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            width: double.infinity, 
            padding: const EdgeInsets.all(50), 
            decoration: BoxDecoration(
              color: Colors.white, // Fondo blanco
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Nombre', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(name),

                Divider(color: Colors.black.withOpacity(0)),

                Text('Edad', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(age),

                Divider(color: Colors.black.withOpacity(0)),

                Text('Ocupación', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(occupation),

                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 227, 131, 6)
                  ),
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  child: Text('Regresar a Inicio', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
