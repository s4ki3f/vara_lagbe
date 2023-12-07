import 'package:flutter/material.dart';

class Catagories extends StatefulWidget {
  const Catagories({super.key});

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  final CatagoriesList = [
    'Top Recomended',
    'Near you',
    'AI recomendation for you',
    'Most Popular'
  ];
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelect = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: currentSelect == index
                                  ? Theme.of(context).primaryColor
                                  : Colors.transparent,
                              width: 3))),
                  child: Text(
                    CatagoriesList[index],
                    style: TextStyle(
                        color: currentSelect == index
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).textTheme.bodyLarge!.color,
                        fontSize: currentSelect == index ? 16 : 14,
                        fontWeight: currentSelect == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: CatagoriesList.length),
    );
  }
}
