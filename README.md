# Marcador Deportivo

Aplicación desarrollada con Flutter que permite llevar el control de la puntuación de dos equipos deportivos: equipo local y equipo visitante.

## Funcionalidades

- Visualización de las puntuaciones de ambos equipos.
- Botones para sumar puntos.
- Botones para restar puntos, evitando puntuaciones negativas.
- Marcador superior sincronizado con las tarjetas de los equipos.
- Botón RESET para reiniciar ambas puntuaciones.

## Tecnologías utilizadas

- Flutter
- Dart
- Material Design 3

## Estructura del proyecto

```text
lib/
├── main.dart
├── screens/
│   └── scoreboard_screen.dart
├── themes/
│   └── app_theme.dart
└── widgets/
    ├── reset_button.dart
    ├── scoreboard_header.dart
    └── team_score_card.dart
```

## Ejecución

Para ejecutar la aplicación, utiliza:

```bash
flutter pub get
flutter run
```

## Autoría

Proyecto desarrollado como práctica de programación con Flutter por Svitlana Giryushta Smirnova.