import 'package:flutter/material.dart';

import '../themes/app_theme.dart';
import '../widgets/reset_button.dart';
import '../widgets/scoreboard_header.dart';
import '../widgets/team_score_card.dart';

/// Pantalla principal y responsable del estado de las puntuaciones.
class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

/// Clase que contiene el estado y la lógica del marcador
class _ScoreboardScreenState extends State<ScoreboardScreen> {
  // Puntuaciones iniciales de los dos equipos.
  int puntuacionLocal = 10;
  int puntuacionVisitante = 21;

  /// Incrementa en un punto la puntuación del equipo indicado
  void _incrementarLocal() {
    setState(() {
      puntuacionLocal++;
    });
  }
  /// Incrementa en un punto la puntuación del equipo visitante
  void _incrementarVisitante() {
    setState(() {
      puntuacionVisitante++;
    });
  }

  /// Resta un punto, evitando que la puntuación sea negativa.
  void _disminuirLocal() {
    if (puntuacionLocal > 0) {
      setState(() {
        puntuacionLocal--;
      });
    }
  }

  void _disminuirVisitante() {
    if (puntuacionVisitante > 0) {
      setState(() {
        puntuacionVisitante--;
      });
    }
  }

  /// Devuelve las dos puntuaciones a cero.
  void _reiniciarMarcador() {
    setState(() {
      puntuacionLocal = 0;
      puntuacionVisitante = 0;
    });
  }

  @override
  Widget build(BuildContext context) {

    // Estructura principal de la pantalla
    return Scaffold(

      // Evita que el contenido quede debajo de elementos del sistema.
      body: SafeArea(

         // Añade márgenes alrededor del contenido:
        child: Padding(
          padding: const EdgeInsets.fromLTRB(11, 8, 11, 12),

          // Organiza los elementos principales verticalmente
          child: Column(
            children: [
              // Cabecera con el icono y el título de la aplicación.
              const _AppTitle(),

              const SizedBox(height: 12),

              // Marcador superior con las puntuaciones actualizadas
              ScoreboardHeader(
                puntuacionLocal: puntuacionLocal,
                puntuacionVisitante: puntuacionVisitante,
              ),

              const SizedBox(height: 11),

              // Distribuye las tarjetas de los equipos en horizonta:
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    // Tarjeta del equipo local:
                    Expanded(
                      child: TeamScoreCard(
                        nombre: 'EQUIPO LOCAL',
                        puntuacion: puntuacionLocal,
                        colorPrincipal: AppTheme.azulLocal,
                        colorCentral: AppTheme.azulLocalOscuro,
                        onIncrementar: _incrementarLocal,
                        onDisminuir: _disminuirLocal,
                      ),
                    ),
                    const SizedBox(width: 11),

                    // Tarjeta del equipo visitante:
                    Expanded(
                      child: TeamScoreCard(
                        nombre: 'EQUIPO VISITA',
                        puntuacion: puntuacionVisitante,
                        colorPrincipal: AppTheme.rojoVisitante,
                        colorCentral: AppTheme.rojoVisitanteOscuro,
                        onIncrementar: _incrementarVisitante,
                        onDisminuir: _disminuirVisitante,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 11),

              // Botón inferior para reiniciar las dos puntuaciones.
              ResetButton(onPressed: _reiniciarMarcador),
            ],
          ),
        ),
      ),
    );
  }
}

/// Widget privado que muestra el icono y el título de la aplicación:
class _AppTitle extends StatelessWidget {

  /// Constructor de la cabecera:
  const _AppTitle();

  @override
  Widget build(BuildContext context) {

    // Contenedor de altura fija que organiza el icono y el texto
    return const SizedBox(
      height: 36,
      child: Row(
        children: [

          // Icono principal de la aplicación
          Icon(Icons.public, color: Colors.white, size: 17),
          SizedBox(width: 7),

          // Nombre de la aplicación
          Text(
            'MARCADOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
