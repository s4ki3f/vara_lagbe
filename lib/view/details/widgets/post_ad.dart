import 'package:flutter/material.dart';

class PostAd extends StatefulWidget {
  @override
  _PostAdState createState() => _PostAdState();
}

class _PostAdState extends State<PostAd> {
  String location = '';
  String ownerDetail = '';
  String flatDetail = '';
  double rentPrice = 0.0;
  bool negotiablePrice = false;
  double confirmedPrice = 0.0;
  String roomNumber = 'One Room';

  // Add your image related logic here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Ad'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Location'),
                onChanged: (value) {
                  setState(() {
                    location = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Owner Detail'),
                onChanged: (value) {
                  setState(() {
                    ownerDetail = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Flat Detail'),
                onChanged: (value) {
                  setState(() {
                    flatDetail = value;
                  });
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Rent Price'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    rentPrice = double.parse(value);
                  });
                },
              ),
              Row(
                children: [
                  Checkbox(
                    value: negotiablePrice,
                    onChanged: (value) {
                      setState(() {
                        negotiablePrice = value!;
                      });
                    },
                  ),
                  Text('Negotiable Price'),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Confirmed Price'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    confirmedPrice = double.parse(value);
                  });
                },
              ),
              DropdownButtonFormField<String>(
                value: roomNumber,
                items: [
                  DropdownMenuItem(
                    child: Text('One Room'),
                    value: 'One Room',
                  ),
                  DropdownMenuItem(
                    child: Text('Two Rooms'),
                    value: 'Two Rooms',
                  ),
                  DropdownMenuItem(
                    child: Text('Three Rooms'),
                    value: 'Three Rooms',
                  ),
                  DropdownMenuItem(
                    child: Text('Four or More'),
                    value: 'Four or More',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    roomNumber = value!;
                  });
                },
              ),
              // Add your image related UI here
              ElevatedButton(
                onPressed: () {
                  // Add your save logic here
                },
                child: Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your delete logic here
                },
                child: Text('Delete'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your post logic here
                },
                child: Text('Post'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
