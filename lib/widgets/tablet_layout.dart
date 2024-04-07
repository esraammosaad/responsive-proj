import 'package:flutter/material.dart';
import 'package:responsive_proj/widgets/custom_horizontal_list.dart';

import 'custom_sliver_list.dart';
class TabletLayout extends StatelessWidget {
  const TabletLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomHorizontalList(),
        SliverPadding(padding: EdgeInsets.only(bottom: 10)),
        CustomSliverList(),
      ],
    );
  }
}
