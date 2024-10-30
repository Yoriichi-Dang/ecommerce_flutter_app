import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class FlashSaleProductItem extends StatelessWidget {
  final String id;
  final String pathImage;
  final String name;
  final String price;
  final String numberPurchase;
  final String discount;
  const FlashSaleProductItem(
      {super.key,
      required this.id,
      required this.pathImage,
      required this.name,
      required this.price,
      required this.numberPurchase,
      this.discount = "0"});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(id);
      },
      child: SizedBox(
        width: 180,
        child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(pathImage), fit: BoxFit.cover),
                    ),
                  ),
                  discount == "0"
                      ? Container()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.brown_300,
                              ),
                              child: Text(
                                "-$discount%",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              fontSize: 16,
                              color: AppColors.brown_300),
                        ),
                        Text(
                          "$price VND",
                          style: TextStyle(
                              fontSize: 13,
                              color: AppColors.brown_200,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      "$numberPurchase sold",
                      style: TextStyle(
                          color: AppColors.brown_200,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
