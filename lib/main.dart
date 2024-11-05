import 'package:flutter/material.dart';
import 'package:t1_user_app/screens/crear_perfil.dart';
import 'package:t1_user_app/screens/home.dart';
import 'package:t1_user_app/screens/perfil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Perfil',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/create': (context) => CrearPerfilScreen(),
        '/profile': (context) {
          
          final args = ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
          return perfilScreen(
            name: args?['name'] ?? 'Nombre no disponible',
            age: args?['age'] ?? 'Edad no disponible',
            occupation: args?['occupation'] ?? 'Ocupación no disponible',
          );
        },
      },
    );
  }
}
