import 'package:flutter/material.dart';
import 'package:fruit_juice_app/core/juice_price.dart';
import 'package:fruit_juice_app/product/Language/language_items.dart';

class ShoppingCard extends StatefulWidget {
  final String imagePath;
  final String imageName;
  final JuicePrice juicePrice = JuicePrice();
  ShoppingCard({Key? key, required this.imageName, required this.imagePath})
      : super(key: key);

  @override
  State<ShoppingCard> createState() => _ShoppingCardState();
}

class _ShoppingCardState extends State<ShoppingCard> {
  @override
  Widget build(BuildContext context) {
    double imagePrice = 0;

    switch (widget.imageName) {
      case "Green Apple":
        imagePrice = widget.juicePrice.greenApplePrice;
        break;
      case "Purple Plum":
        imagePrice = widget.juicePrice.purplePlumPrice;
        break;
      case "Strawberry":
        imagePrice = widget.juicePrice.strawberryPrice;
        break;
      default:
        imagePrice = 0;
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background1.jpg",
            fit: BoxFit.cover,
          ),
          AppBar(
            leading: IconButton(
              color: Colors.white,
              tooltip: "Menu Icon",
              icon: const Icon(
                Icons.arrow_back,
                size: 40,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Text(
                  LanguageItems.shoppingTitleText,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 30),
                ),
                ListTile(
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      "assets/images/${widget.imagePath}",
                    ),
                  ),
                  title: Text(
                    widget.imageName,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),
                  subtitle: Text('Price: \$$imagePrice'),
                ),
                // Container(
                //   height: 100, // Örnek bir değer, isteğinize göre ayarlayın
                //   child: Card(
                //     child: Row(
                //       children: [
                //         SizedBox(
                //           height: 100,
                //           width: 100,
                //           child: Image.asset("assets/images/${widget.imagePath}"),
                //         ),
                //         Text(widget.imageName),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
