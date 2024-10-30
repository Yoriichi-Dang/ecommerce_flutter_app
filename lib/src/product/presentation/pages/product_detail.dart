import 'package:ecommerce_app/configs/themes/app_colors.dart';
import 'package:ecommerce_app/src/home/presentation/widgets/search_navbar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatefulWidget {
  final String productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ScrollController _scrollController = ScrollController();
  Color appBarColor = Colors.transparent; // Màu nền AppBar ban đầu
  @override
  void initState() {
    super.initState();

    // Theo dõi vị trí cuộn
    _scrollController.addListener(() {
      setState(() {
        // Thay đổi màu AppBar khi cuộn xuống 200 pixels
        if (_scrollController.offset > 200) {
          appBarColor = Colors.white; // Màu trắng khi cuộn xuống
        } else {
          appBarColor = Colors.transparent; // Màu trong suốt khi ở đầu
        }
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose(); // Giải phóng bộ điều khiển cuộn
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Column(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/products/product_2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: ListView(
                  controller: _scrollController, // Gán ScrollController
                  children: [
                    // Thêm nội dung khác ở đây nếu cần
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        widget.productId,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // AppBar
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: appBarColor,
            ),
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0, // Không có bóng đổ cho AppBar
                    title: appBarColor == Colors.transparent
                        ? Container()
                        : SearchNavBar(),
                    leading: IconButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(AppColors.brown_300),
                      ),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ), // Biểu tượng quay lại
                      onPressed: () {
                        Navigator.of(context).pop(); // Quay lại trang trước
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
