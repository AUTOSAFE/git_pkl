import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting {
  final String title;
  final VoidCallback OnTap;
  final IconData icon;

  Setting({
    required this.title,
    required this.OnTap,
    required this.icon,
  });
}

final List<Setting> settings = [
  Setting(
    title: "Personal Data",
    OnTap: () {},
    icon: CupertinoIcons.person_fill,
  ),
  Setting(
    title: "Settings",
    OnTap: () {},
    icon: Icons.settings,
  ),
  Setting(
    title: "E-Statements",
    OnTap: () {},
    icon: CupertinoIcons.doc_fill,
  ),
  Setting(
    title: "Refferal Code",
    OnTap: () {},
    icon: CupertinoIcons.heart_fill,
  ),
];

final List<Setting> settings2 = [
  Setting(
    title: "FAQ",
    OnTap: () {},
    icon: CupertinoIcons.ellipsis_vertical_circle_fill,
  ),
  Setting(
    title: "Our Handbook",
    OnTap: () {},
    icon: CupertinoIcons.pencil_circle_fill,
  ),
  Setting(
    title: "Community",
    OnTap: () {},
    icon: CupertinoIcons.person_3_fill,
  ),
  Setting(
    title: "Keluar",
    OnTap: () {
      Get.toNamed('/sign-in');
    },
    icon: CupertinoIcons.zoom_out,
  ),
];
