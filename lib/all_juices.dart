import 'package:flutter/material.dart';
import 'package:fruit_juice_app/juice_detail.dart';
import 'package:fruit_juice_app/core/card_view.dart';
import 'package:fruit_juice_app/product/Language/language_items.dart';

class AllJuices extends StatefulWidget {
  const AllJuices({Key? key}) : super(key: key);

  @override
  State<AllJuices> createState() => _AllJuicesState();
}

class _AllJuicesState extends State<AllJuices> {
  List<String> juiceImagePaths = [
    "assets/images/greenApple.jpg",
    "assets/images/plum.jpg",
    "assets/images/strawberry.jpg",
    "assets/images/blueberries.jpg",
    "assets/images/grape.jpg",
    "assets/images/grapefruit.jpg",
    "assets/images/lemon.jpg",
    "assets/images/orange.jpg",
    "assets/images/papaya.jpg",
    "assets/images/pineapple.jpg",
    "assets/images/pomegranate.jpg",
    "assets/images/watermelon.jpg",
  ];

  List<String> juiceNames = [
    "Green Apple",
    "Purple Plum",
    "Strawberry",
    "blueberries",
    "grape",
    "grapefruit",
    "lemon",
    "orange",
    "papaya",
    "pineapple",
    "pomegranate",
    "watermelon",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/black.jpg",
            fit: BoxFit.cover,
          ),
          AppBar(
            leading: IconButton(
              color: Colors.white,
              tooltip: "Menu Icon",
              icon: const Icon(
                Icons.dehaze,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 130.0),
            child: Text(
              LanguageItems.juiceAllTitleText,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: GridView.count(
              crossAxisCount: 2,
              // childAspectRatio: 2 / 1,
              children: List.generate(
                juiceImagePaths.length,
                (index) =>
                    _buildCardd(juiceImagePaths[index], juiceNames[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardd(String juiceImagePaths, String juiceNames) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JuiceDetail(
              imageName: "imageName",
              imagePath: "imagePath",
              juiceImagePaths: juiceImagePaths,
              juiceNames: juiceNames,
            ),
          ),
        );
      },
      child: AllJuiceCard(
          juiceImagePaths: juiceImagePaths, juiceNames: juiceNames),
    );
  }
}
