import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  final String pathImage;
  const CarouselItem({super.key, required this.pathImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
