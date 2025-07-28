import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final stockPriceProvider = StreamProvider((ref) async* {
  final random = Random();

  double currentPrice = 100.0;

  while (true) {
    await Future.delayed(Duration(seconds: 1));

    //simulate price function
    currentPrice +=
        random.nextDouble() * 4 - 2; //random change between -2 and +2
    yield double.parse(
      currentPrice.toStringAsFixed(2),
    ); //yield represents value is a stream  //emit the update price
  }
});
