// lib/view/sign_up/sign_up.dart
import 'package:flutter/material.dart';
import 'package:vara_lagbe/view/sign_in/sign_in.dart'; // Import the sign-in page

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

    @override
    Widget build(BuildContext context) {
        // Your sign-up page content
        return Scaffold(
            appBar: AppBar(
                title: const Text('Sign Up'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Text('Sign Up Page Content'),
                        const SizedBox(height: 20),
                        TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Email',
                            ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                            decoration: const InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                                // Perform sign-up logic here
                            },
                            child: const Text('Sign Up'),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton.icon(
                            onPressed: () {
                                // Perform Google sign-up logic here
                            },
                            icon: const Icon(Icons.login),
                            label: const Text('Sign Up with Google'),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SignInPage()), // Navigate to the sign-in page
                                );
                            },
                            child: const Text('Sign In'), // Add the sign-in button
                        ),
                    ],
                ),
            ),
        );
    }
}
