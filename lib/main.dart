import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_demo/switch_theme_provider.dart';
import 'package:theme_demo/theme.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => SwitchThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemeMode appThemeMode =
        Provider.of<SwitchThemeProvider>(context).appThemeMode;
    return MaterialApp(
      title: 'Theme Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: appThemeMode,
      home: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Stack(
            children: [
              Center(
                child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 40,
                  sigmaY: 40,
                ),
                child: Center(
                  child: Container(
                    color: Colors.transparent,
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: GestureDetector(
                        onTap: () {
                          Provider.of<SwitchThemeProvider>(context,
                                  listen: false)
                              .switchAppTheme();
                        },
                        child: Image(
                          image: AssetImage(appThemeMode == ThemeMode.light
                              ? "assets/sun.png"
                              : "assets/moon.png"),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
