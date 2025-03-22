import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../routes.dart';
import '../utils/utils.dart';

class AppProvider extends ChangeNotifier {

  loadSplashScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    Utils.navigatePage(Routes.home, predicate: true);
  }

  static AppProvider of(BuildContext context, {bool listen = false}) =>
      Provider.of(context, listen: listen);
}