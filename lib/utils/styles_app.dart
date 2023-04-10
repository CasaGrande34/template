import 'package:flutter/material.dart';
import 'package:pruebas/utils/utils_exports.dart';

class StylesApp {
  static InputDecoration inputDecorationURL = const InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: SizesApp.padding30),
    label: Text('Ingrese su URL'),
    suffixIcon: Icon(Icons.access_alarm),
    labelStyle: TextStyle(color: Colors.black),
    border: OutlineInputBorder(),
  );

  static InputDecoration inputDecorationItem = InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: SizesApp.padding10),
    label: const Text(
      'Username',
    ),
    suffixIcon: const Icon(Icons.comment),
    labelStyle: const TextStyle(color: Colors.black26),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(SizesApp.padding20),
    ),
  );
}
