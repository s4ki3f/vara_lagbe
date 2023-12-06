import 'package:flutter/material.dart';

class UserAdListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Ad List'),
      ),
      body: ListView.builder(
        itemCount: adList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(adList[index].title),
            subtitle: Text(adList[index].description),
            // Add more details or customize the ListTile as needed
          );
        },
      ),
    );
  }
}

// Replace this with your actual ad model
class Ad {
  final String title;
  final String description;

  Ad({required this.title, required this.description});
}

// Replace this with your actual list of ads
List<Ad> adList = [
  Ad(title: 'Ad 1', description: 'Description 1'),
  Ad(title: 'Ad 2', description: 'Description 2'),
  Ad(title: 'Ad 3', description: 'Description 3'),
  // Add more ads to the list
];
