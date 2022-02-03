import 'package:uber_food/models/auth/index.dart';

abstract class AppAction {}

typedef ActionResult = void Function(dynamic action);

abstract class UserAction extends AppAction {
  AppUser? get user;
}

abstract class ErrorAction extends AppAction {
  Object get error;

  StackTrace get stackTrace;
}

abstract class PendingAction extends AppAction {
  String get pendingId;
}

abstract class ActionStart extends PendingAction {}

abstract class ActionDone extends PendingAction {}
