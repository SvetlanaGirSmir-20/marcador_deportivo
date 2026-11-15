# Marcador deportivo en Flutter

Aplicación de marcador para dos equipos, desarrollada con Flutter y sin dependencias externas.

## Cómo utilizar estos archivos

1. Crea un proyecto Flutter con `flutter create marcador_deportivo`.
2. Sustituye la carpeta `lib/` del proyecto por la carpeta `lib/` incluida aquí.
3. Abre un terminal en la carpeta del proyecto.
4. Ejecuta `flutter pub get`.
5. Ejecuta `flutter run`.

## Funcionalidades

- Incrementar la puntuación de cada equipo.
- Disminuir la puntuación sin permitir valores negativos.
- Mostrar los resultados sincronizados en las tarjetas y en el marcador superior.
- Reiniciar ambas puntuaciones a cero.

## Estructura

- `main.dart`: punto de entrada y configuración de la aplicación.
- `themes/app_theme.dart`: colores y tema global.
- `screens/scoreboard_screen.dart`: pantalla principal y estado de las puntuaciones.
- `widgets/scoreboard_header.dart`: marcador superior.
- `widgets/team_score_card.dart`: tarjeta reutilizable de cada equipo.
- `widgets/reset_button.dart`: botón de reinicio.
