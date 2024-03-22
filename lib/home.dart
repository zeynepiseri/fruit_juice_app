import 'package:flutter/material.dart';
import 'package:fruit_juice_app/all_juices.dart';
import 'package:fruit_juice_app/juice_detail.dart';
import 'package:fruit_juice_app/core/card_view.dart';
import 'package:fruit_juice_app/core/juice_button.dart';
import 'package:fruit_juice_app/product/Language/language_items.dart';
import 'package:fruit_juice_app/juice_shopping.dart';

class JuiceHome extends StatefulWidget {
  const JuiceHome({Key? key}) : super(key: key);

  @override
  State<JuiceHome> createState() => _JuiceHomeState();
}

class _JuiceHomeState extends State<JuiceHome> {
  List<String> imagePaths = [
    "assets/images/greenApple.jpg",
    "assets/images/plum.jpg",
    "assets/images/strawberry.jpg",
  ];

  List<String> imageNames = [
    "Green Apple",
    "Purple Plum",
    "Strawberry",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background2.jpg",
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
            padding: ProjectPadding.pagePaddingTopOnly,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: Container(
                    child: Padding(
                      padding: ProjectPadding.pagePaddingLeftOnly,
                      child: Text(
                        LanguageItems.homeTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: ProjectColors.homeTitleColor,
                            fontSize: ProjectSize.homeTitleSize),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: ProjectPadding.pagePaddingLeftOnly,
                  child: Text(
                    LanguageItems.homeExplanation,
                    style: TextStyle(fontSize: ProjectSize.homeExplanationSize),
                  ),
                ),
                const Padding(
                  padding: ProjectPadding.pagePaddingOnlySub,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LanguageItems.homeSubTitle,
                        style: TextStyle(fontSize: ProjectSize.homeSubSize),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: AllButton(),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: _buildCard(imagePaths[0], imageNames[0]),
                        ),
                      ),
                      Expanded(
                        child: _buildCard(imagePaths[1], imageNames[1]),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: _buildCard(imagePaths[2], imageNames[2]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imagePath, String imageName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JuiceDetail(
              imagePath: imagePath,
              imageName: imageName,
              juiceImagePaths: "juiceImagePaths",
              juiceNames: "juiceNames",
            ),
          ),
        );
      },
      child: CardHomeView(
        imagePath: imagePath,
        imageName: imageName,
      ),
    );
  }
}

class ProjectColors {
  static Color homeTitleColor = Colors.white;
}

class ProjectSize {
  static const double homeTitleSize = 60.0;
  static const double homeExplanationSize = 20.0;
  static const double homeSubSize = 25.0;
}

class ProjectPadding {
  static const pagePaddingLeftOnly = EdgeInsets.only(left: 60);
  static const pagePaddingOnlySub = EdgeInsets.only(left: 30, top: 40);
  static const pagePaddingTopOnly = EdgeInsets.only(top: 170);
}
