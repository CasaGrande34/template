import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pruebas/utils/utils_exports.dart';

class FontsApp {
  static final oldStandardTt = GoogleFonts.oldStandardTt(
    color: Colors.white,
    fontSize: SizesApp.padding20,
    fontWeight: FontWeight.bold,
  );

  static final roboto = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: SizesApp.padding25,
  );
}
