import 'package:flutter/material.dart';
import 'package:newappidea/theme_provider.dart';
import 'package:provider/provider.dart';
import 'myhome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        print(themeProvider.isDarkMode);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          themeMode: themeProvider.themeMode,
          home: MyHomePage(title: 'Flutter Demo Home Page'),
          debugShowCheckedModeBanner: false,
        );
      });
}
