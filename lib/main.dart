import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uber_food/init/init.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/presentation/api_dependencies.dart';
import 'package:uber_food/presentation/routes.dart';
import 'package:uber_food/presentation/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final InitResult result = await initialize();
  runApp(UberFood(result: result));
}

class UberFood extends StatefulWidget {
  const UberFood({Key? key, required this.result}) : super(key: key);

  final InitResult result;

  @override
  State<UberFood> createState() => _UberFoodState();
}

class _UberFoodState extends State<UberFood> {
  @override
  void dispose() {
    //actions.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ApiDependencies(
      actions: widget.result.actions,
      child: StoreProvider<AppState>(
        store: widget.result.store,
        child: MaterialApp(
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          theme: appTheme,
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
