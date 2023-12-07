import 'package:flutter/material.dart';
import 'package:vara_lagbe/view/home/widgets/best_offer.dart';
import 'widgets/custom_bottom_navbar.dart';
import 'widgets/recomended_house.dart';
import 'widgets/catagories.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/welcome_text.dart';
import 'widgets/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(),
            const SearchInput(),
            const Catagories(),
            RecomendedHouse(),
            BestOffer(), // Remove 'const' keyword
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
