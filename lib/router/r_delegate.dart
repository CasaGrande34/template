//dependencies
import 'package:fluro/fluro.dart';
import 'package:pruebas/router/r_handlers.dart';

class RoutesDelegateFluro {
  //Routes Strings
  // static const login = '/auth/login';
  // static const register = '/auth/register';
  static const home = '/';
  static const route404 = '/404';

  //Objects
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    // router.define(
    //   register,
    //   handler: registerHandler,
    // );

    // router.define(
    //   login,
    //   handler: loginHandler,
    // );

    router.define(
      home,
      handler: homeHandler,
    );

    router.notFoundHandler = view404Handler;
  }
}
