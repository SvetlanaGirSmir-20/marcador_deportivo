import 'package:flutter/material.dart';

/// Tarjeta reutilizable para representar a cualquiera de los dos equipos.
class TeamScoreCard extends StatelessWidget {

  // Datos visuales y puntuación del equipo.
  final String nombre;
  final int puntuacion;
  final Color colorPrincipal;
  final Color colorCentral;

  // Funciones que se ejecutan al pulsar los botones
  final VoidCallback onIncrementar;
  final VoidCallback onDisminuir;

  /// Constructor que recibe los datos y las acciones del equipo.
  const TeamScoreCard({
    super.key,
    required this.nombre,
    required this.puntuacion,
    required this.colorPrincipal,
    required this.colorCentral,
    required this.onIncrementar,
    required this.onDisminuir,
  });

  @override
  Widget build(BuildContext context) {

    // Recorta el contenido para mantener las esquinas redondeadas.
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),

      // Organiza los controles y la puntuación verticalmente.
      child: Column(
        children: [

          // Botón superior: suma un punto al equipo.
          Expanded(
            flex: 2,
            child: _ScoreControl(
              color: colorPrincipal,
              simbolo: '+',
              onPressed: onIncrementar,
            ),
          ),

          // Zona central que muestra la puntuación actual
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: colorCentral,
              alignment: Alignment.center,

              // Ajusta el tamaño del número para evitar que se salga.
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '$puntuacion',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 68,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),

          // Botón inferior que resta un punto sin bajar de cero:
          Expanded(
            flex: 2,
            child: _ScoreControl(
              color: colorPrincipal,
              simbolo: '−',
              onPressed: onDisminuir,
            ),
          ),

          // Franja inferior con el nombre del equipo.
          Container(
            height: 24,
            width: double.infinity,
            color: colorCentral,
            alignment: Alignment.center,
            child: Text(
              nombre,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget privado que representa un botón para sumar o restar punto
class _ScoreControl extends StatelessWidget {

  // Aspecto y comportamiento del botón.
  final Color color;
  final String simbolo;
  final VoidCallback onPressed;

/// Constructor que recibe el color, el símbolo y la acción del botón.
  const _ScoreControl({
    required this.color,
    required this.simbolo,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Material: permite aplicar el efecto visual al pulsar el botón
    return Material(
      color: color,
      child: InkWell(
        onTap: onPressed,

        // Centra el símbolo + o − dentro del botón.
        child: Center(
          child: Text(
            simbolo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 54,
              fontWeight: FontWeight.w300,
              height: 1,
            ),
          ),
        ),
      ),
    );
  }
}
