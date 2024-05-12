import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'color/theme_color_interface.dart';
part 'theme_state.freezed.dart';

enum Themes {
  dark,
  light
}

@freezed
class ThemeState with _$ThemeState {
  factory ThemeState({
    required Themes selectedTheme,
    required IThemeColor themeColor
  }) = _ThemeState;
}