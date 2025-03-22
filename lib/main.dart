import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'helpers/globals.dart';
import 'providers/app_provider.dart';
import 'routes.dart';
import 'views/undefined_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AppProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      scaffoldMessengerKey: scaffoldMessengerKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.root,
      onGenerateRoute: Routes.generateRoutes,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => UndefinedView(name: settings.name),
      ),
    );
  }
}
