import 'package:flutter/material.dart';
import '../models/drawer_model.dart';
import 'custom_drawer_item.dart';
class CustomDrawerListView extends StatelessWidget {
  const CustomDrawerListView({
    super.key,
    required this.drawerList,
  });

  final List<DrawerModel> drawerList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => CustomDrawerItem(
        title: drawerList[index].title,
        icon: drawerList[index].icon,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: drawerList.length,
    );
  }
}
