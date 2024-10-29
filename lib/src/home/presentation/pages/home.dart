import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/carousel_item.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/category.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/flash_sale.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/header.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/search_navbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> images = [
      'assets/images/banner_2.jpg',
      'assets/images/banner_2.jpg',
    ];

    return Container(
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Header(
            location: 'San Francisco, CA',
            numberNotification: 100,
          ),
          const SizedBox(
            height: 15,
          ),
          SearchNavBar(),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1.0,
                    aspectRatio: 2.0,
                  ),
                  items: images.map((item) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CarouselItem(pathImage: item);
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Category(),
                FlashSale(hours: 1, minutes: 50, seconds: 0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
