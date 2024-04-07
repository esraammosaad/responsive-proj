import 'package:flutter/material.dart';
import 'package:responsive_proj/widgets/desktop_layout.dart';
import 'package:responsive_proj/widgets/mobile_layout.dart';
import 'package:responsive_proj/widgets/tablet_layout.dart';
import 'adaptive_layout.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const MobileLayout(),
        tabletLayout: (BuildContext context) => const TabletLayout(),
        desktopLayout: (BuildContext context) => const DesktopLayout(),
      ),
    );
  }
}
