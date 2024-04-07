import 'package:flutter/material.dart';
import 'package:responsive_proj/consts.dart';
import '../models/drawer_model.dart';
import 'custom_drawer_list_view.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final List<DrawerModel> drawerList = [
    DrawerModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerModel(title: 'A B O U T', icon: Icons.info_outline),
    DrawerModel(title: 'L O G O U T', icon: Icons.login_sharp),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: AppColors.backGroundColor,
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 52,
            ),
          ),
          const SizedBox(height:32 ,),
          CustomDrawerListView(drawerList: drawerList),
        ],
      ),
    );
  }
}

