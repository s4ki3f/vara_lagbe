import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final nidNumberController = TextEditingController();
  final occupationController = TextEditingController();
  File? avatarImage;

  Future pickImage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        avatarImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: avatarImage != null
                  ? FileImage(avatarImage!) as ImageProvider<Object>?
                  : const AssetImage('assets/images/makima.png'),
              radius: 50,
            ),
            IconButton(
              icon: const Icon(Icons.camera),
              onPressed: pickImage,
            ),
            TextField(
              controller: firstNameController,
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: nidNumberController,
              decoration: const InputDecoration(labelText: 'NID Number'),
            ),
            TextField(
              controller: occupationController,
              decoration: const InputDecoration(labelText: 'Occupation'),
            ),
            ElevatedButton(
              child: const Text('Update'),
              onPressed: () {
                // Update the user profile here
              },
            ),
          ],
        ),
      ),
    );
  }
}
