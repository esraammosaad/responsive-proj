import 'package:flutter/material.dart';
import 'custom_sliver_grid.dart';
import 'custom_sliver_list.dart';
class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverGrid(),
        SliverPadding(padding: EdgeInsets.only(bottom: 10)),
        CustomSliverList(),
      ],
    );
  }
}
