abstract class AppAction{}

typedef ActionResult = void Function(dynamic action);

abstract class ErrorAction extends AppAction{
  Object get error;
}