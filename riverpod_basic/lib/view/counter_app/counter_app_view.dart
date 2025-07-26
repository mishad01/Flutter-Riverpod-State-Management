import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_basic/view/slider_provider.dart';

final counter = StateProvider<int>((ref) {
  return 0;
});

final switchProvider = StateProvider((ref) {
  return false;
});

class CounterAppView extends ConsumerStatefulWidget {
  const CounterAppView({super.key});

  @override
  ConsumerState<CounterAppView> createState() => _CounterAppViewState();
}

class _CounterAppViewState extends ConsumerState<CounterAppView> {
  @override
  Widget build(BuildContext context) {
    final count = ref.watch(counter);
    final switchTest = ref.watch(switchProvider);
    print(print);
    return Scaffold(
      appBar: AppBar(title: Text("Counter APP")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(count.toString(), style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state++;
                },
                child: Text("Increment"),
              ),
              ElevatedButton(
                onPressed: () {
                  ref.read(counter.notifier).state--;
                },
                child: Text("Decrement"),
              ),
            ],
          ),
          Switch(
            value: switchTest,
            onChanged: (value) {
              print("object");
              ref.read(switchProvider.notifier).state = value;
            },
          ),

          /* Slider(
            value: slider,
            onChanged: (value) {
              ref.read(sliderProvider.notifier).state = value;
            },
          ),*/
          /*Consumer(
            builder: (context, ref, child) {
              final slider = ref.watch(sliderProvider);
              return Slider(
                value: slider,
                onChanged: (value) {
                  ref.read(sliderProvider.notifier).state = value;
                },
              );
            },
          ),*/
          Consumer(
            builder: (context, ref, child) {
              final slider = ref.watch(sliderProvider);
              return Column(
                children: [
                  Slider(
                    value: slider.slider,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      ref.read(sliderProvider.notifier).state = slider.copyWith(
                        slider: value,
                      );
                    },
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber.withAlpha(slider.slider.toInt()),
                  ),
                  Text(slider.toString()),
                  IconButton(
                    onPressed: () {
                      ref.read(sliderProvider.notifier).state = slider.copyWith(
                        showPassword: !slider.showPassword,
                      );
                    },
                    icon: slider.showPassword
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
