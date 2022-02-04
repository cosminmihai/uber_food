import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:uber_food/actions/actions.dart';

class ActionReporting {
  const ActionReporting();

  void report(dynamic action) {
    if (action is! AppAction) {
      throw StateError('This is not a valid action: $action');
    } else if (action is ErrorAction) {
      final Object error = action.error;
      final StackTrace stackTrace = action.stackTrace;

      if (shouldReport(action, error)) {
        log('$action', time: DateTime.now(), error: error, stackTrace: stackTrace);
      }
    } else if (kDebugMode) {
      if (shouldPrint(action)) {
        log('${transformAction(action)}', time: DateTime.now());
      }
    } else {
      log('${transformAction(action)}', time: DateTime.now());
    }
  }
}

bool shouldReport(AppAction action, Object error) {
  return true;
}

bool shouldPrint(AppAction action) {
  return true;
}

dynamic transformAction(AppAction action) {
  return action;
}
