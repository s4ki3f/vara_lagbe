import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostAdPage extends StatefulWidget {
  const PostAdPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PostAdPageState createState() => _PostAdPageState();
}

class _PostAdPageState extends State<PostAdPage> {
  String firstName = '';
  String lastName = '';
  String contactNumber = '';
  String flatDetail = '';
  String location = '';
  String flatSize = '';
  String roomNumber = 'one';
  String bathroomNumber = '';
  List<String> extraFacilities = [];
  bool isFurnished = false;
  double rentalPrice = 0.0;
  bool isNegotiable = false;
  double confirmedPrice = 0.0;
  File? _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Ad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Owner Details'),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'First Name',
                ),
                onChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
                onChanged: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contact Number',
                ),
                onChanged: (value) {
                  setState(() {
                    contactNumber = value;
                  });
                },
              ),
              const SizedBox(height: 32.0),
              const Text('Flat Details'),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Flat Detail',
                ),
                onChanged: (value) {
                  setState(() {
                    flatDetail = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                ),
                onChanged: (value) {
                  setState(() {
                    location = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Flat Size',
                ),
                onChanged: (value) {
                  setState(() {
                    flatSize = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Room Number',
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String?>(
                    value: roomNumber,
                    items: <String?>[
                      'one',
                      'two',
                      'three',
                      'four or more',
                      null
                    ].map<DropdownMenuItem<String?>>((String? value) {
                      return DropdownMenuItem<String?>(
                        value: value,
                        child: Text(value ?? 'None'),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        roomNumber = newValue!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Number of Bathrooms',
                ),
                onChanged: (value) {
                  setState(() {
                    bathroomNumber = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              const Text('Extra Facilities'),
              const SizedBox(height: 8.0),
              CheckboxListTile(
                title: const Text('Furnished'),
                value: isFurnished,
                onChanged: (value) {
                  setState(() {
                    isFurnished = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Rental Price',
                ),
                onChanged: (value) {
                  setState(() {
                    rentalPrice = double.parse(value);
                  });
                },
              ),
              const SizedBox(height: 8.0),
              CheckboxListTile(
                title: const Text('Negotiable Price'),
                value: isNegotiable,
                onChanged: (value) {
                  setState(() {
                    isNegotiable = value!;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirmed Price',
                ),
                onChanged: (value) {
                  setState(() {
                    confirmedPrice = double.parse(value);
                  });
                },
              ),
              const SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: getImage,
                    child: const Text('Pick Image'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement save functionality
                    },
                    child: const Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement delete functionality
                    },
                    child: const Text('Delete'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement post functionality
                    },
                    child: const Text('Post'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
