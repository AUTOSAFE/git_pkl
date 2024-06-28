import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkl_get/app/modules/home/views/home_view.dart';
import 'package:pkl_get/app/modules/navbar/controller.dart';
import 'package:pkl_get/app/modules/profile/views/profile_view.dart';
import 'package:iconly/iconly.dart';

class NAVBAR extends StatefulWidget {
  const NAVBAR({super.key});

  @override
  State<NAVBAR> createState() => _NAVBARState();
}

class _NAVBARState extends State<NAVBAR> {
  final controller = Get.put(NavbarController());

  // Define the _bottombarItem method
  BottomNavigationBarItem _bottombarItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavbarController>(builder: (context) {
      return Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [HomeView(), ProfileView()],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottombarItem(IconlyBold.home, "HOME"),
              _bottombarItem(IconlyBold.profile, "PROFILE"),
            ]),
      );
    });
  }
}
