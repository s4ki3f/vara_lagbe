import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostAdPage extends StatefulWidget {
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
        title: Text('Post Ad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Owner Details'),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
                onChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
                onChanged: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Contact Number',
                ),
                onChanged: (value) {
                  setState(() {
                    contactNumber = value;
                  });
                },
              ),
              SizedBox(height: 32.0),
              Text('Flat Details'),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Flat Detail',
                ),
                onChanged: (value) {
                  setState(() {
                    flatDetail = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Location',
                ),
                onChanged: (value) {
                  setState(() {
                    location = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Flat Size',
                ),
                onChanged: (value) {
                  setState(() {
                    flatSize = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              InputDecorator(
                decoration: InputDecoration(
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
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Number of Bathrooms',
                ),
                onChanged: (value) {
                  setState(() {
                    bathroomNumber = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text('Extra Facilities'),
              SizedBox(height: 8.0),
              CheckboxListTile(
                title: Text('Furnished'),
                value: isFurnished,
                onChanged: (value) {
                  setState(() {
                    isFurnished = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Rental Price',
                ),
                onChanged: (value) {
                  setState(() {
                    rentalPrice = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 8.0),
              CheckboxListTile(
                title: Text('Negotiable Price'),
                value: isNegotiable,
                onChanged: (value) {
                  setState(() {
                    isNegotiable = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirmed Price',
                ),
                onChanged: (value) {
                  setState(() {
                    confirmedPrice = double.parse(value);
                  });
                },
              ),
              SizedBox(height: 32.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: getImage,
                    child: Text('Pick Image'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement save functionality
                    },
                    child: Text('Save'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement delete functionality
                    },
                    child: Text('Delete'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // TODO: Implement post functionality
                    },
                    child: Text('Post'),
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
