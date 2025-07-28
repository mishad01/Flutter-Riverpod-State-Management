import 'package:flutter_riverpod/flutter_riverpod.dart';

/*
final futureProvider = FutureProvider<int>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  throw 'internet not working';
  return 3;
});
*/
final futureProvider = FutureProvider<List<String>>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  return ['Sakif', 'Rahaman', 'Mishad'];
});
