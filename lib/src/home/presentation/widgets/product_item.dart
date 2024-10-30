import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/core/animation/page_transition.dart';
import 'package:ecommerce_app/src/product/presentation/pages/product_detail.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String name;
  final String thumbnail;
  final String price;
  final String numberPurchase;
  const ProductItem(
      {super.key,
      required this.id,
      required this.name,
      required this.thumbnail,
      required this.price,
      required this.numberPurchase});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(PageTransition.changeRoute(ProductDetailPage(productId: id)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Image.asset(thumbnail, height: 170, fit: BoxFit.cover),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.brown_300,
                            fontFamily: 'Roboto'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: AppColors.brown_300,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "$price VND",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                      Text(
                        "$numberPurchase sold",
                        style: TextStyle(color: AppColors.brown_300),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
