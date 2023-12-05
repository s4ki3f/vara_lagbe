import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vara_lagbe/model/theme_changer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SwitchListTile(
        title: Text('Dark Mode'),
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
