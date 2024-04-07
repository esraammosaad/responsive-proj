import 'package:flutter/material.dart';
import '../consts.dart';
class CustomListItem extends StatelessWidget {
  const CustomListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
