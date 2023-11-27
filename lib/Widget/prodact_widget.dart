import 'package:assignment_beat/constant/color.dart';
import 'package:flutter/material.dart';

import 'package:assignment_beat/model/item_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  Item item;

  ProductItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(width: 0.5),
      ),
      child: Column(
        children: [
          // Display the product image within a clipped container.
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            width: double.infinity,
            height: 100.h,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                item.image!, //  Use the item's image path.
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 12.h),

          ShaderMask(
            shaderCallback: (Rect bounds) {
              // Use a LinearGradient for a gradient effect.
              return const LinearGradient(
                colors: [
                  ColorApp.color2,
                  ColorApp.color1,
                ],
              ).createShader(bounds);
            },
            //  Display the product name with specific styling.
            child: Text(
              item.name!, //  Use the item's name.
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
