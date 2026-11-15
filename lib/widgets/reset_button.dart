import 'package:flutter/material.dart';

// Botón reutilizable que ejecuta la acción de reiniciar el marcador.
/// StatelessWidget: Widget que no gestiona un estado modificable propio.
///
class ResetButton extends StatelessWidget {
  // Función que se ejecuta al pulsar el botón.
  // VoidCallback: tipo de función que no recibe parámetros ni devuelve ningún valor.
  final VoidCallback onPressed;

  /// Constructor que recibe la función de reinicio.
  const ResetButton({
    super.key,
    required this.onPressed,  // required: el parámetro es obligatorio.
  });

  @override
  Widget build(BuildContext context) {

    // Define las dimensiones del botón.
    return SizedBox( // Las dimensiones de un elemento.
      width: 126,
      height: 30,

      // Crea un botón con borde, icono y texto.
      child: OutlinedButton.icon(

        // Ejecuta la función recibida al pulsar.
        onPressed: onPressed,
        icon: const Icon(Icons.refresh, size: 15),

        // Texto que aparece dentro del botón.
        label: const Text(
          'RESET',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),

        // Personaliza los colores, bordes y forma del botón.
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: AppButtonColors.fondo,
          side: const BorderSide(color: Color(0xFF77797D), width: 0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }
}

/// Clase que centraliza el color de fondo del botón RESET.
class AppButtonColors {

  // Color gris oscuro fondo del botón.
  static const Color fondo = Color(0xFF292B2E);
}
