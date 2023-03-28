import 'package:flutter/material.dart';

import '../../utils/utils_exports.dart';
import 'package:pruebas/src/home_layout/home_exports.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeScreen(),
      desktop: HomeView(),
    );
  }
}
