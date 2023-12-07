import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vara_lagbe/model/theme_changer.dart';
import 'package:vara_lagbe/view/sign_in/sign_in.dart'; // Import the sign_in.dart file
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vara_lagbe/view/sign_up/sign_up.dart'; // Import the sign_up.dart file
import 'package:vara_lagbe/view/home/home.dart';
// Import the home.dart file
import 'package:permission_handler/permission_handler.dart'; // Import the permission_handler package

Future<void> requestPermissions() async {
  Map<Permission, PermissionStatus> statuses = await [
    Permission.camera,
    Permission.storage,
  ].request();

  final info = statuses[Permission.camera]!.isGranted &&
          statuses[Permission.storage]!.isGranted
      ? 'All permissions granted.'
      : 'Permissions are not granted.';
  print(info);
}

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://zjtyazzkqqytsxgumkvc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpqdHlhenprcXF5dHN4Z3Vta3ZjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA1NTIzODUsImV4cCI6MjAxNjEyODM4NX0.lEpVcFEe8MJ7IwvO4BaZe2j5m-61Z-Z_3Zy7RrggIi8',
  );

  await requestPermissions();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeChanger(ThemeData.light()),
      child: const MyApp(),
    ),
  );
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChanger>(
      builder: (context, themeChanger, child) {
        return MaterialApp(
          theme: themeChanger.getTheme(),
          debugShowCheckedModeBanner: false,
          initialRoute: '/view/sign_in',
          routes: {
            '/view/sign_in': (context) => const SignInPage(),
            '/view/sign_up/sign_up': (context) => const SignUpPage(),
            '/view/home': (context) => const HomePage(),
            //'/postAd': (context) => PostAdPage(),
            //'/profilepage': (context) =>
            //ProfilePage() // Add route for the home page
          },
        );
      },
    );
  }
}

// Add the requestPermissions function

