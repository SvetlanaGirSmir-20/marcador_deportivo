import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

/// Panel superior que muestra los resultados de LOCAL y VISITA.
class ScoreboardHeader extends StatelessWidget {

  // Puntuaciones recibidas desde la pantalla principal.
  final int puntuacionLocal;
  final int puntuacionVisitante;

  /// Constructor que recibe las puntuaciones de ambos equipos.
  const ScoreboardHeader({
    super.key,
    required this.puntuacionLocal,
    required this.puntuacionVisitante,
  });

  @override
  Widget build(BuildContext context) {

    // Contenedor principal del marcador superior.
    return Container(
      height: 46,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppTheme.grisPanel,
        border: Border.all(color: const Color(0xFF77797D), width: 0.8),
        borderRadius: BorderRadius.circular(12),
      ),

      // Organiza los elementos horizontalmente.
      child: Row(
        children: [

          // Icono y nombre del equipo local.
          const Icon(Icons.circle, color: AppTheme.azulLocal, size: 6),
          const SizedBox(width: 7),
          const Text(
            'LOCAL',
            style: TextStyle(
              color: AppTheme.azulLocal,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Distribuye el espacio disponible.
          const Spacer(),

          // Contenedor central que muestra las dos puntuaciones.
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xFF111315),
              borderRadius: BorderRadius.circular(20),
            ),
            // Coloca las puntuaciones y el separador VS en horizontal.
            child: Row(
              children: [

                // Puntuación actual del equipo local.
                Text(
                  '$puntuacionLocal',
                  style: const TextStyle(
                    color: AppTheme.azulLocal,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),

                // Texto que separa los resultados.
                const Text(
                  'VS',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 12),

                // Puntuación actual del equipo visitante.
                Text(
                  '$puntuacionVisitante',
                  style: const TextStyle(
                    color: AppTheme.rojoVisitante,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // Distribuye el espacio disponible.
          const Spacer(),

          // Identificación del equipo visitante.
          const Text(
            'VISITA',
            style: TextStyle(
              color: AppTheme.rojoVisitante,
              fontSize: 8,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 7),
          const Icon(Icons.circle, color: AppTheme.rojoVisitante, size: 6),
        ],
      ),
    );
  }
}
