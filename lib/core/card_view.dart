import 'package:flutter/material.dart';
import 'package:fruit_juice_app/juice_detail.dart';

class CardHomeView extends StatelessWidget {
  const CardHomeView({
    Key? key,
    required this.imagePath,
    required this.imageName,
  }) : super(key: key);

  final String imagePath;
  final String imageName; // imageName parametresi eklendi

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CardSize.cardHeight,
      width: CardSize.cardWidth,
      child: Padding(
        padding: CardPadding.cardTopPadding,
        child: GestureDetector(
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
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AllJuiceCard extends StatefulWidget {
  const AllJuiceCard({
    Key? key,
    required this.juiceImagePaths,
    required this.juiceNames,
  }) : super(key: key);

  final String juiceImagePaths;
  final String juiceNames;

  @override
  State<AllJuiceCard> createState() => _AllJuiceCardState();
}

class _AllJuiceCardState extends State<AllJuiceCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CardSize.cardHeight,
      width: CardSize.cardWidth,
      child: Padding(
        padding: CardPadding.cardTopPadding,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => JuiceDetail(
                  imagePath: widget.juiceImagePaths,
                  imageName: widget.juiceNames,
                  juiceImagePaths: "juiceImagePaths",
                  juiceNames: "juiceNames",
                ),
              ),
            );
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(12)),
                    child: Image.asset(
                      widget.juiceImagePaths,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.juiceNames,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardSize {
  static const double cardHeight = 190.0;
  static const double cardWidth = 50.0;
}

class CardPadding {
  static const cardTopPadding = EdgeInsets.only(top: 15, left: 5);
}
