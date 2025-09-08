import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';
import 'package:todo_list1/features/settings_screen/view/wedgits/section_title.dart';
import 'package:todo_list1/features/settings_screen/view/wedgits/setting_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Settings',
          style: Styles.textStyleBold24.copyWith(color: AppColors.buttonForeColor),
        ),
      ),
      body: ListView(
        children: const [
          /// Section: General
          SettingsSectionTitle(title: "General"),
          SettingItem(
            title: "Notifications",
            icon: Icons.notifications_outlined,
          ),
          SettingItem(
            title: "Theme",
            subtitle: "System",
            icon: Icons.brightness_6_outlined,
          ),
          SettingItem(
            title: "Language",
            subtitle: "English",
            icon: Icons.language_outlined,
          ),
          Divider(),

          /// Section: Account
          SettingsSectionTitle(title: "Account"),
          SettingItem(
            title: "Manage Account",
            icon: Icons.person_outline,
          ),
          SettingItem(
            title: "Sign Out",
            icon: Icons.logout,
            isDestructive: true,
          ),
          Divider(),

          /// Section: About
          SettingsSectionTitle(title: "About"),
          SettingItem(
            title: "App Version",
            subtitle: "1.0.0",
            icon: Icons.info_outline,
          ),
          SettingItem(
            title: "Privacy Policy",
            icon: Icons.privacy_tip_outlined,
          ),
        ],
      ),
    );
  }
}
