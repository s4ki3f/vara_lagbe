// lib/view/sign_up/sign_up.dart
import 'package:flutter/material.dart';
import 'package:vara_lagbe/view/sign_in/sign_in.dart'; // Import the sign-in page

class SignUpPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // Your sign-up page content
        return Scaffold(
            appBar: AppBar(
                title: Text('Sign Up'),
            ),
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text('Sign Up Page Content'),
                        SizedBox(height: 20),
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Email',
                            ),
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {
                                // Perform sign-up logic here
                            },
                            child: Text('Sign Up'),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton.icon(
                            onPressed: () {
                                // Perform Google sign-up logic here
                            },
                            icon: Icon(Icons.login),
                            label: Text('Sign Up with Google'),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                            onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => SignInPage()), // Navigate to the sign-in page
                                );
                            },
                            child: Text('Sign In'), // Add the sign-in button
                        ),
                    ],
                ),
            ),
        );
    }
}
