import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
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
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: avatarImage != null
                  ? FileImage(avatarImage!) as ImageProvider<Object>?
                  : AssetImage('assets/images/makima.png'),
              radius: 50,
            ),
            IconButton(
              icon: Icon(Icons.camera),
              onPressed: pickImage,
            ),
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: nidNumberController,
              decoration: InputDecoration(labelText: 'NID Number'),
            ),
            TextField(
              controller: occupationController,
              decoration: InputDecoration(labelText: 'Occupation'),
            ),
            ElevatedButton(
              child: Text('Update'),
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
