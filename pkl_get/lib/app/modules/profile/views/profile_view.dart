import 'package:flutter/material.dart';
import 'package:pkl_get/app/data/colors.dart';
import '../models/setting.dart';
import '../widgets/avatar_card.dart';
import '../widgets/setting_tile.dart';
import '../widgets/support_card.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: AppColors.backgroundColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0), // Contoh padding umum
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const AvatarCard(),
                    const SizedBox(height: 20),
                    const Divider(),
                    const SizedBox(height: 10),
                    Column(
                      children: List.generate(
                        settings.length,
                        (index) => SettingTile(setting: settings[index]),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Column(
                      children: List.generate(
                        settings2.length,
                        (index) => SettingTile(setting: settings2[index]),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SupportCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
