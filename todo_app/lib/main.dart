import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:todo_app/view/di/app_model.dart';
import 'package:todo_app/view/home_view.dart';

GetIt getIt = GetIt.instance;
void main() {
  getIt.registerSingleton<AppModel>(
    AppModuleImplementation(),
    signalsReady: true,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeView(),
    );
  }
}
