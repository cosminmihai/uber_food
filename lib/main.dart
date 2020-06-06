import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:uber_food/actions/initialize_app.dart';
import 'package:uber_food/epics/app_epics.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/reducer/reducer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final AppEpics epics = AppEpics();
  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(
        epics.epics,
      )
    ],
  )..dispatch(InitializeApp());
  runApp(UberFood(store: store));
}

class UberFood extends StatelessWidget {
  const UberFood({Key key, this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(),
          body: const Center(
            child: Icon(Icons.apps),
          ),
        ),
      ),
    );
  }
}
