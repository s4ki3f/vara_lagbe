import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vara_lagbe/model/theme_changer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: SwitchListTile(
        title: const Text('Dark Mode'),
        value: themeChanger.getTheme() == ThemeData.dark(),
        onChanged: (bool value) {
          themeChanger.setTheme(
            value ? ThemeData.dark() : ThemeData.light(),
          );
        },
      ),
    );
  }
}
