import 'package:flutter/material.dart';
import 'package:fruit_juice_app/core/juice_description.dart';
import 'package:fruit_juice_app/core/juice_price.dart';
import 'package:fruit_juice_app/core/juice_button.dart';

class JuiceDetail extends StatelessWidget {
  final String imagePath;
  final String imageName;
  final String juiceImagePaths;
  final String juiceNames;
  final JuiceDescription juiceDescription = JuiceDescription();
  final JuicePrice juicePrice = JuicePrice();
  JuiceDetail(
      {super.key,
      required this.imagePath,
      required this.imageName,
      required this.juiceImagePaths,
      required this.juiceNames});

  @override
  Widget build(BuildContext context) {
    String imageDescription = "";
    double imagePrice = 0;

    // İlgili açıklamanın resim adına göre atanması
    switch (imageName) {
      case "Green Apple":
        imageDescription = juiceDescription.greenApple;
        imagePrice = juicePrice.greenApplePrice;
        break;
      case "Purple Plum":
        imageDescription = juiceDescription.purplePlum;
        imagePrice = juicePrice.purplePlumPrice;
        break;
      case "Strawberry":
        imageDescription = juiceDescription.strawberry;
        imagePrice = juicePrice.strawberryPrice;
        break;
      case "papaya":
        imageDescription = juiceDescription.strawberry;
        imagePrice = juicePrice.strawberryPrice;
        break;
      default:
        imageDescription = "Description not found";
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          AppBar(
            leading: IconButton(
              tooltip: "Menu Icon",
              icon: const Icon(
                Icons.dehaze,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
          // Image description
          Positioned(
            bottom: 20,
            left: 70,
            top: 100,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Image.asset(
                      "assets/images/cup.png",
                      color: Colors.white,
                      width: 250,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    imageName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: _ProjectSize.detailTitleSize),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    imageDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: _ProjectSize.detailExplanationSize),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    "\$ $imagePrice",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: _ProjectSize.detailTitleSize),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: ExtraButton(),
                ),
                IconnButton(
                  imageName: imageName,
                  imagePath: imagePath,
                  juiceImagePaths: juiceImagePaths,
                  juiceNames: juiceNames,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectSize {
  static const double detailTitleSize = 30.0;
  static const double detailExplanationSize = 16.0;
}
