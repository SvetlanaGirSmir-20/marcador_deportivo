import 'package:flutter/material.dart';

import 'screens/scoreboard_screen.dart';
import 'themes/app_theme.dart';

/// Punto de entrada de la aplicación.
void main() {
  runApp(const MarcadorApp()); //const: indica que podemos crear ese widget como una instancia constante.
}

/// Widget raíz: configura MaterialApp y el tema global.
/// StatelessWidget significa que este componente no necesita gestionar datos que cambien durante su funcionamiento.
class MarcadorApp extends StatelessWidget {
  const MarcadorApp({super.key});

/// El método build() construye la interfaz visual del widget.
/// BuildContext: proporciona información sobre la posición del widget dentro del árbol de widgets
/// Widget: es el tipo de elemento que devuelve el método.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcador deportivo',
      debugShowCheckedModeBanner: false, /// Oculta la etiqueta DEBUG.
      theme: AppTheme.tema, /// Aplica el tema personalizado.
      home: const ScoreboardScreen(), /// Indica cuál será la primera pantalla.
    );
  }
}
