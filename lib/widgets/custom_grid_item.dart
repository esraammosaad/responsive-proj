import 'package:flutter/material.dart';
import '../consts.dart';
class CustomGridItem extends StatelessWidget {
  const CustomGridItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
