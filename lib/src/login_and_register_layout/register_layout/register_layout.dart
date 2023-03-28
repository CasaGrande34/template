import 'package:flutter/material.dart';

import 'register_exports.dart';
import '../../../utils/utils_exports.dart';

class RegisterLayout extends StatelessWidget {
  const RegisterLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: RegisterScreen(),
      desktop: RegisterView(),
    );
  }
}
