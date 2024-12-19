import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../core/constants/color.dart';
import 'bottom_sheet_widget.dart';

class ProductSelectionWidget extends StatefulWidget {
  final String label;
  final String initialValue;
  final List<String> options;

  const ProductSelectionWidget({
    super.key,
    required this.label,
    required this.initialValue,
    required this.options,
    required Null Function(dynamic value) onSelected,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ProductSelectionWidgetState createState() => _ProductSelectionWidgetState();
}

class _ProductSelectionWidgetState extends State<ProductSelectionWidget> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showBottomSheetWidget(
          context: context,
          title: widget.label,
          options: widget.options,
          selectedValue: selectedValue,
          onOptionSelected: (value) {
            setState(() {
              selectedValue = value;
            });
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: CustomColor.greyColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Label
            Text(
              widget.label,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  widget.label == "Color" ? "" : selectedValue,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (widget.label == "Color")
                  CircleAvatar(
                    backgroundColor: _getColorFromName(selectedValue),
                    radius: 10,
                  ),
                const SizedBox(width: 20),
                const Icon(IconsaxPlusBroken.arrow_down_2,
                    color: CustomColor.whiteColor),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorFromName(String colorName) {
    switch (colorName) {
      case "Green":
        return Colors.green;
      case "Blue":
        return Colors.blue;
      case "Black":
        return Colors.black;
      default:
        return Colors.grey;
    }
  }
}
