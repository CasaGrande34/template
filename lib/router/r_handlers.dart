import 'package:fluro/fluro.dart';
import '../src/view_404/view_404.dart';
import 'package:pruebas/src/home_layout/home_exports.dart';

// final Handler loginHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     return const LoginLayout();
//   }),
// );
// final Handler loginHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     final authProvider = Provider.of<AuthProvider>(context!);
//     if (authProvider.status == AuthStatus.checking) {
//       return const CircularProgressIndicator();
//     }
//     if (authProvider.status == AuthStatus.noAuthenticated) {
//       return const LoginLayout();
//     }
//     return const SelectRolView();
//   }),
// );

// final Handler registerHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     return const RegisterLayout();
//   }),
// );
// final Handler registerHandler = Handler(
//   handlerFunc: ((context, parameters) {
//     final authProvider = Provider.of<AuthProvider>(context!);
//     if (authProvider.status == AuthStatus.checking) {
//       return const CircularProgressIndicator();
//     }
//     if (authProvider.status == AuthStatus.noAuthenticated) {
//       return const RegisterLayout();
//     }
//     return const SelectRolView();
//   }),
// );

final Handler homeHandler = Handler(
  handlerFunc: ((context, parameters) {
    //Logica para el token
    return const HomeLayout();
  }),
);

final Handler view404Handler = Handler(
  handlerFunc: ((context, parameters) => const View404()),
);
