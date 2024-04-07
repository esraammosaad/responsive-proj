import 'package:flutter/material.dart';

import 'custom_grid_item.dart';

class CustomHorizontalList extends StatelessWidget {
  const CustomHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: SizedBox(
          height: 160,
          child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) =>
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CustomGridItem(),
            ),
                itemCount: 15,
              ),
        ));
  }
}
