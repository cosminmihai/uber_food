import 'package:uber_food/models/auth/app_user.dart';

abstract class AppAction {}

typedef ActionResult = void Function(dynamic action);

abstract class ErrorAction extends AppAction {
  Object get error;
}

abstract class UserAction extends AppAction {
  AppUser get user;
}
