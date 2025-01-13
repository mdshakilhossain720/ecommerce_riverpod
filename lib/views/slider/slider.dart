import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider.dart';



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
              color: Colors.red.withOpacity(sliders.slider),
            );
          }),
          Consumer(builder: (context, ref, child) {
            final sliders = ref.watch(slider);
            return Slider(
                value: sliders.slider,
                onChanged: (value) {
                  final sliders = ref.read(slider.notifier);
                  sliders.state = sliders.state.copyWith(slider: value);

                 
                });
          }),
        ],
      ),
    );
  }
}
