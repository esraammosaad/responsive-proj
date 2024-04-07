import 'package:flutter/material.dart';
import 'package:responsive_proj/consts.dart';
import 'package:responsive_proj/widgets/custom_drawer.dart';
import 'package:responsive_proj/widgets/custom_home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    print('media query width${MediaQuery.of(context).size.width}');

    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar:MediaQuery.of(context).size.width<(932)? AppBar(
        backgroundColor: AppColors.appBarColor,
        leading:  GestureDetector(
          onTap: (){
            scaffoldKey.currentState!.openDrawer();
          },
            child: Icon(Icons.menu,color: AppColors.cardColor,size: 26,)),
      ):null,
      backgroundColor: AppColors.backGroundColor,
      body: const CustomHomeViewBody(),
    );
  }
}

