import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final slider = StateProvider<double>((ref) {
  return 0;
});

class SliderScreen extends ConsumerWidget {
  const SliderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: Column(
        children: [
          Consumer(builder: (context, ref, child) {
            final sliders = ref.watch(slider);
            return Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(sliders),
            );
          }),
          Consumer(builder: (context, ref, child) {
            final sliders = ref.watch(slider);
            return Slider(
                value: sliders,
                onChanged: (value) {
                  ref.read(slider.notifier).state = value;
                });
          }),
        ],
      ),
    );
  }
}
