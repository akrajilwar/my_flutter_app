import 'package:flutter/material.dart';

import '../helpers/globals.dart';

class Utils {
  static showSnackBar(
      {String message = 'oops something went wrong..', length = 1}) {
    final SnackBar snackBar =
        SnackBar(content: Text(message), duration: Duration(seconds: length));
    scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  }

  static String getAssetImage(String imageName, {String imageType = 'svg'}) =>
      'assets/images/$imageName.$imageType';

  static String getAssetIcon(String iconName, {String iconType = 'svg'}) =>
      'assets/icons/$iconName.$iconType';

  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static navigatePage(String route, {bool predicate = false, Object? args}) {
    if (predicate) {
      navigatorKey.currentState
          ?.pushNamedAndRemoveUntil(route, (route) => false, arguments: args);
    } else {
      navigatorKey.currentState?.pushNamed(route, arguments: args);
    }
  }

  static navigateBack({dynamic result}) {
    navigatorKey.currentState?.pop();
  }
}
