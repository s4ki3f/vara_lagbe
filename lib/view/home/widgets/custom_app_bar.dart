import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.equal_square),
            ),
            PopupMenuButton<String>(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/makima.png')),
              onSelected: (value) {
                // Handle your menu choice here
                switch (value) {
                  case 'Profile':
                    // Navigate to profile
                    break;
                  case 'Settings':
                    // Navigate to settings
                    break;
                  case 'Logout':
                    // Perform logout
                    break;
                  case 'Post Ad':
                    Navigator.pushNamed(context, '/postAd');
                    // Navigate to post ad
                    break;
                  case 'My Ads':
                    // Navigate to my ads
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return ['Profile', 'Settings', 'Logout', 'Post Ad', 'My Ads']
                    .map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
