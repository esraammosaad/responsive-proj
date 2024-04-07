import 'package:flutter/material.dart';
import 'custom_list_item.dart';
class CustomSliverList extends StatelessWidget {
  const CustomSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) => const CustomListItem(),
    );
  }
}
