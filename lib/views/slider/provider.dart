import 'package:flutter_riverpod/flutter_riverpod.dart';

final slider = StateProvider<AppState>((ref) {
  return AppState(slider: .5, showPasswoerd: false);
});

class AppState {
  final double slider;
  final bool showPasswoerd;

  AppState({required this.slider, required this.showPasswoerd});

  AppState copyWith({double? slider, bool? showPasswoerd}) {
    return AppState(
      slider: slider ?? this.slider,
      showPasswoerd: showPasswoerd ?? this.showPasswoerd,
    );
  }
}
