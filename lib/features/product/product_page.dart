import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import '../../core/constants/color.dart';
import 'widgets/product_images_widget.dart';
import 'widgets/product_details_widget.dart';
import 'widgets/product_reviews_widget.dart';
import 'widgets/product_actions_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.mainColor,
      appBar: AppBar(
        backgroundColor: CustomColor.mainColor,
        leading: IconButton(
          style: IconButton.styleFrom(
            backgroundColor: CustomColor.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconsaxPlusBroken.arrow_left_2,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(IconsaxPlusBroken.heart,
                color: CustomColor.whiteColor),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImagesWidget(),
            SizedBox(height: 16),
            ProductDetailsWidget(),
            SizedBox(height: 16),
            ProductReviewsWidget(),
            SizedBox(height: 16),
          ],
        ),
      ),
      bottomNavigationBar: const ProductActionsWidget(price: 99),
    );
  }
}
