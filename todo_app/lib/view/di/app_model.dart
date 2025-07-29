import 'package:flutter/cupertino.dart';
import 'package:todo_app/main.dart';

abstract class AppModel extends ChangeNotifier {
  void incrementCounter();
  int get counter;
}

class AppModuleImplementation extends AppModel {
  int _counter = 0;

  AppModuleImplementation() {
    Future.delayed(
      Duration(seconds: 3),
    ).then((value) => getIt.signalReady(this));
  }

  @override
  int get counter => _counter;

  @override
  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}
