import 'package:flutter/material.dart';
import 'widgets/catagories.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/welcome_text.dart';

import 'widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            SearchInput(),
            Catagories(),
          ],
        ),
      ),
    );
  }
}
