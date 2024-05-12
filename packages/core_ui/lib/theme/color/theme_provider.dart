import 'package:core_ui/theme/color/theme_color_interface.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../theme_state.dart';

part 'theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeState build() => ThemeState(
    selectedTheme: Themes.light,
        themeColor: lightTheme,
      );

  void switchTheme() {
    if(state.selectedTheme == Themes.dark) {
      state = state.copyWith(
          selectedTheme: Themes.light,
          themeColor: lightTheme
      );
    } else {
      state = state.copyWith(
          selectedTheme: Themes.dark,
          themeColor: darkTheme
      );
    }
  }
}
