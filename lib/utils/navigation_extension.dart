import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  Future navigateToNext(Widget nextScreen) =>
      Navigator.of(this).push(MaterialPageRoute(builder: (_) => nextScreen));

  Future navigateWithReplacement(Widget nextScreen) =>
      Navigator.of(this).pushReplacement(MaterialPageRoute(
        builder: (_) => nextScreen,
      ));

  void navigateBack({Object? data}) {
    if (Navigator.of(this).canPop()) {
      Navigator.of(this).pop(data);
    }
  }
}
