import 'package:demo/config/routes.dart';
import 'package:demo/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();
    if (!authService.isAuth) {
      return const RouteSettings(name: Routes.LOGIN);
    }
    return null;
  }
}