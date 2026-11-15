import 'package:flutter/material.dart';

/// Contiene los colores y estilos generales de la aplicación
class AppTheme {

  // Colores del fondo y de los dos equipos
  static const Color fondo = Color(0xFF101214);
  static const Color azulLocal = Color(0xFF3D82F6);
  static const Color azulLocalOscuro = Color(0xFF2F5EAB);
  static const Color rojoVisitante = Color(0xFFE51F24);
  static const Color rojoVisitanteOscuro = Color(0xFFA51F24);
  static const Color grisPanel = Color(0xFF292B2E);
  static const Color blanco = Colors.white;

  /// Tema Material compartido por toda la aplicación
  static final ThemeData tema = ThemeData(

    // Activa la versión Material 3 de los componentes de Flutter
    useMaterial3: true,

    // Establece el color de fondo de las pantallas
    scaffoldBackgroundColor: fondo,

    // Define la fuente de texto general
    fontFamily: 'Roboto',

    // Configura los colores principales del tema.
    colorScheme: const ColorScheme.dark(
      primary: azulLocal,
      surface: fondo,
    ),
  );
}
