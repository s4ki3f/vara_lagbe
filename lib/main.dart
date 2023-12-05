import 'package:flutter/material.dart';
import 'package:vara_lagbe/view/details/widgets/post_ad.dart';
import 'package:vara_lagbe/view/sign_in/sign_in.dart'; // Import the sign_in.dart file
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:vara_lagbe/view/sign_up/sign_up.dart'; // Import the sign_up.dart file
import 'package:vara_lagbe/view/home/home.dart'; // Import the home.dart file

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://zjtyazzkqqytsxgumkvc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpqdHlhenprcXF5dHN4Z3Vta3ZjIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA1NTIzODUsImV4cCI6MjAxNjEyODM4NX0.lEpVcFEe8MJ7IwvO4BaZe2j5m-61Z-Z_3Zy7RrggIi8',
  );

  runApp(MyApp());
}

// Get a reference your Supabase client
final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 231, 247, 247),
        primaryColor: Color(0xFF811B83),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xFF100E34),
          ),
          bodyText1: TextStyle(
            color: Color(0xFF100E34).withOpacity(0.5),
          ),
        ),
      ),
      initialRoute: '/view/sign_in',
      routes: {
        '/view/sign_in': (context) => SignInPage(),
        '/view/sign_up/sign_up': (context) => SignUpPage(),
        '/view/home': (context) => HomePage(),
        '/postAd': (context) => PostAd(), // Add route for the home page
      },
    );
  }
}
