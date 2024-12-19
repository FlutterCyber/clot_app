import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';
import 'product_quantity_selector.dart';
import 'product_selection_widget.dart';

class ProductDetailsWidget extends StatefulWidget {
  const ProductDetailsWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductDetailsWidgetState createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  String _selectedSize = "M";
  String _selectedColor = "Blue";

  @override
  Widget build(BuildContext context) {
    const String productName = "Men's Harrington Jacket";
    const int productPrice = 148;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          productName,
          style: TextStyle(
            color: CustomColor.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),


        const Text(
          "\$$productPrice",
          style: TextStyle(
            color: CustomColor.buttonColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),


        ProductSelectionWidget(
          label: "Size",
          initialValue: _selectedSize,
          options: const ["S", "M", "L", "XL"],
          onSelected: (value) {
            setState(() {
              _selectedSize = value;
            });
          },
        ),
        const SizedBox(height: 16),


        ProductSelectionWidget(
          label: "Color",
          initialValue: _selectedColor,
          options: const ["Green", "Blue", "Black"],
          onSelected: (value) {
            setState(() {
              _selectedColor = value;
            });
          },
        ),
        const SizedBox(height: 16),

        // Quantity Selector
        const ProductQuantitySelector(),
        const SizedBox(height: 25),


        const Text(
          "Built for life on the move, this compact and lightweight backpack is perfect for everyday use. It features a padded laptop sleeve, internal organization, and two water bottle pockets.",
          style: TextStyle(
            color: CustomColor.boldgreyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Shipping & Returns",
          style: TextStyle(
            color: CustomColor.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Free standard shipping and free 60-day returns.",
          style: TextStyle(
            color: CustomColor.boldgreyColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
