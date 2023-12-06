import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:vara_lagbe/model/theme_changer.dart';
import 'package:vara_lagbe/view/Adlist/useradlistview.dart';
import 'package:vara_lagbe/view/details/widgets/post_ad.dart';
import 'package:vara_lagbe/view/home/widgets/chatpage.dart';
import 'package:vara_lagbe/view/profile/profile.dart';
import 'package:vara_lagbe/view/settings/settings_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatPage(
                      user: User(
                        name: 'John Doe',
                        avatarUrl: 'https://github.com/s4ki3f.png',
                        unreadMessageCount: 5,
                      ),
                      users: [],
                    ),
                  ),
                );
              },
              icon: Icon(CupertinoIcons.bubble_left_fill),
            ),
            PopupMenuButton<String>(
              child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/makima.png')),
              onSelected: (value) {
                // Handle your menu choice here
                switch (value) {
                  case 'Profile':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                    break;
                  case 'Logout':
                    // Perform logout
                    Navigator.pushNamed(context, '/view/sign_in');
                    break;
                  case 'Post Ad':
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PostAdPage()),
                    );
                    // Navigate to post ad
                    break;
                  case 'My Ads':
                    // Navigate to my ads
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserAdListView()));
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  ...['Profile', 'Logout', 'Post Ad', 'My Ads']
                      .map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }),
                  const PopupMenuDivider(),
                  PopupMenuItem<String>(
                    value: 'Settings',
                    child: ListTile(
                      title: const Text('Settings'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen()),
                        );
                      },
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}
