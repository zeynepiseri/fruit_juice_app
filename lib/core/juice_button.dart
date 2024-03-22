import 'package:flutter/material.dart';
import 'package:fruit_juice_app/all_juices.dart';
import 'package:fruit_juice_app/juice_shopping.dart';
import 'package:fruit_juice_app/product/Language/language_items.dart';

class ExtraButton extends StatefulWidget {
  const ExtraButton({super.key});

  @override
  State<ExtraButton> createState() => _ExtraButtonState();
}

class _ExtraButtonState extends State<ExtraButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.white, width: 3, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: 70.0, right: 70.0),
        child: Text(
          "Get Your Extra",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class IconnButton extends StatefulWidget {
  final String imageName;
  final String imagePath;
  final String juiceImagePaths;
  final String juiceNames;

  const IconnButton(
      {super.key,
      required this.imageName,
      required this.imagePath,
      required this.juiceImagePaths,
      required this.juiceNames});

  @override
  State<IconnButton> createState() => _IconnButtonState();
}

class _IconnButtonState extends State<IconnButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 3),
        ),
        child: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ShoppingCard(
                  imageName: widget.imageName,
                  imagePath: widget.imagePath,
                ),
              ),
            );
          },
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class AllButton extends StatefulWidget {
  const AllButton({super.key});

  @override
  State<AllButton> createState() => _AllButtonState();
}

class _AllButtonState extends State<AllButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AllJuices(),
          ),
        );
      },
      child: Text(
        LanguageItems.allButtonText,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: Colors.white,
              decorationThickness: 3,
            ),
      ),
    );
  }
}
