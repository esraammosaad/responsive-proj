import 'package:flutter/material.dart';
import 'package:responsive_proj/widgets/custom_drawer.dart';
import 'package:responsive_proj/widgets/custom_grid_item.dart';
import 'package:responsive_proj/widgets/custom_list_item.dart';
import 'package:responsive_proj/widgets/tablet_layout.dart';
class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(

      children: [

        Expanded(child: CustomDrawer(),),
        Expanded(flex: 3,child: TabletLayout(),),
        Expanded(child: Padding(
          padding: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 8.0),
          child: Column(
            children: [
              Expanded(flex: 2, child: CustomGridItem()),
              SizedBox(height: 16,),
              Expanded(child: CustomListItem()),
            ],
          ),
        ))
      ],
    );
  }
}
