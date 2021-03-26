import 'package:flutter/material.dart';
import 'package:newappidea/theme_provider.dart';
import 'package:provider/provider.dart';

class ChangeThemeButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    // return Switch.adaptive(
    //   value: themeProvider.isDarkMode,
    //   onChanged: (value) {
    //     final provider = Provider.of<ThemeProvider>(context, listen: false);
    //     provider.toggleTheme(value);
    //   },
    // );
    void _selectedChoice(String value) {
      final provider = Provider.of<ThemeProvider>(context, listen: false);
      final bool isDarkon =
          MediaQuery.maybeOf(context)?.platformBrightness == Brightness.dark;
      if (value == Constants.themeMode1) {
        provider.toggleTheme(false);
      } else if (value == Constants.themeMode2) {
        provider.toggleTheme(true);
      } else {
        provider.toggleTheme(isDarkon);
      }
    }

    return PopupMenuButton(
      child: Padding(
        child: const Icon(Icons.brightness_4),
        padding: EdgeInsets.symmetric(horizontal: 10.0),
      ),
      itemBuilder: (BuildContext context) {
        return Constants.themeModes.map((String e) {
          return PopupMenuItem(
            child: Text(e),
            value: e,
          );
        }).toList();
      },
      onSelected: _selectedChoice,
    );
  }
}

class Constants {
  static const String themeMode1 = "Light";
  static const String themeMode2 = "Dark";
  static const String themeMode3 = "System";

  static const List<String> themeModes = [themeMode1, themeMode2, themeMode3];
}
