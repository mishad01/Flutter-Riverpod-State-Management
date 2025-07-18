import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//To read constant value
final hello = Provider<String>((ref) {
  return "Hello";
});

final age = Provider<int>((ref) {
  return 10;
});

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Riverpod Basic")),
      body: Center(child: Text("Hello")),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//To read constant value
final hello = Provider<String>((ref) {
  return "Hello World";
});

final age = Provider<int>((ref) {
  return 10;
});

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hello1 = ref.watch(hello);
    return Scaffold(
      appBar: AppBar(title: Text("Riverpod Basic")),
      body: Center(child: Text(hello1)),
    );
  }
}*/
