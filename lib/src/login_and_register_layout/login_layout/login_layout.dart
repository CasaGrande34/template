import 'package:flutter/material.dart';
import 'package:pruebas/src/login_and_register_layout/login_layout/login_exports.dart';
import 'package:pruebas/utils/utils_exports.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: LoginScreen(),
      desktop: LoginView(),
    );
  }
}
