import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../theme/color/theme_provider.dart';
import '../../../theme/theme_state.dart';
import '../../elements/inputs/search_input.dart';

class HomeNavbar extends ConsumerWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final themeNotifier = ref.read(appThemeProvider.notifier);
    final themeProvider = ref.watch(appThemeProvider);

    return  Container(
      color:Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(child: SearchInput()),
            IconButton(
                onPressed: themeNotifier.switchTheme,
                icon: Icon(
                  themeProvider.selectedTheme == Themes.light
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  color: Colors.white70,
                  size: 40,
                )
            ),
          ],
        ),
      ),
    );
  }

}