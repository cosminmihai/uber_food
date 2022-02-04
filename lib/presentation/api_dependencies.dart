import 'package:flutter/widgets.dart';
import 'package:uber_food/actions/actions.dart';

class ApiDependencies extends InheritedWidget {
  const ApiDependencies({
    Key? key,
    required Widget child,
    required this.actions,
  }) : super(key: key, child: child);

  final Stream<AppAction> actions;

  static ApiDependencies of(BuildContext context) {
    final ApiDependencies? result = context.findAncestorWidgetOfExactType<ApiDependencies>();
    assert(result != null, 'No ApiDependencies found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ApiDependencies oldWidget) {
    return false;
  }
}
