import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vara_lagbe/model/house.dart';

import 'widgets/content_intro.dart';
import 'widgets/detail_app_bar.dart';

class DetailPage extends StatelessWidget {
  final House house;
  const DetailPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailAppBar(
              house: house,
            ),
            SizedBox(height: 20),
            ConetentIntro(house: house),
          ],
        ),
      ),
    );
  }
}
