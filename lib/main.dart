import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(const MyGalleryApp());
}

class MyGalleryApp extends StatelessWidget {
  const MyGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gallery Kelompok 5',
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.black,
      ),
      routerConfig: router,
    );
  }
}
