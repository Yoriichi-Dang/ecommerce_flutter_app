import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/carousel_item.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/category.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/flash_sale.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/flash_sale_product_item.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/header.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/product_item.dart';
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
    const List<Map<String, dynamic>> productSales = [
      {
        "123": {
          "image": "assets/images/products/product_1.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100,
          "discount": 50,
        },
        "124": {
          "image": "assets/images/products/product_2.jpg",
          "name": "Product 1",
          "price": 100,
          "discount": 50,
          "numberPurchase": 100,
        },
        "125": {
          "image": "assets/images/products/product_2.jpg",
          "name": "Product 1",
          "price": 100,
          "discount": 50,
          "numberPurchase": 100,
        },
      }
    ];
    const List<Map<String, dynamic>> products = [
      {
        "1": {
          "image": "assets/images/products/product_1.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100
        },
        "2": {
          "image": "assets/images/products/product_1.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100
        },
        "3": {
          "image": "assets/images/products/product_2.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100
        },
        "4": {
          "image": "assets/images/products/product_1.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100
        },
        "5": {
          "image": "assets/images/products/product_2.jpg",
          "name": "Product 1",
          "price": 100,
          "numberPurchase": 100
        }
      }
    ];
    return Stack(children: [
      ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Column(
            children: [
              const SizedBox(
                height: 170,
              ),
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productSales.first.keys.length,
                  itemBuilder: (BuildContext context, int index) {
                    final productKey = productSales.first.keys.elementAt(index);
                    final product = productSales.first[productKey];
                    return FlashSaleProductItem(
                      id: productKey,
                      pathImage: product['image'],
                      name: product['name'],
                      price: product['price'].toString(),
                      numberPurchase: product['numberPurchase'].toString(),
                      discount: product['discount'].toString(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Popular Products',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: products.first.length,
                itemBuilder: (BuildContext context, int index) {
                  final productKey = products.first.keys.elementAt(index);
                  final product = products.first[productKey];
                  return ProductItem(
                      id: productKey,
                      name: product['name'],
                      thumbnail: product['image'],
                      price: product['price'].toString(),
                      numberPurchase: product['numberPurchase'].toString());
                },
              ),
            ],
          ),
        ],
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        height: 156,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Header(
              location: 'San Francisco, CA',
              numberNotification: 100,
            ),
            SizedBox(
              height: 15,
            ),
            SearchNavBar(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ]);
  }
}
