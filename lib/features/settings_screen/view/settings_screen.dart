import 'package:flutter/material.dart';
import 'package:todo_list1/core/app_colors.dart';
import 'package:todo_list1/core/app_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Text(
        title,
        style: Styles.textStyleBold20.copyWith(color: Colors.grey.shade600),
      ),
    );
  }

  Widget buildSettingItem({
    required String title,
    String? subtitle,
    required IconData icon,
    Color? iconColor,
    VoidCallback? onTap,
    bool isDestructive = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: iconColor ?? AppColors.primaryColor),
      title: Text(
        title,
        style: Styles.textStyle16.copyWith(
          color: isDestructive ? Colors.red : Colors.black,
        ),
      ),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      onTap: onTap,
    );
  }

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
        children: [
          /// Section: General
          buildSectionTitle("General"),
          buildSettingItem(
            title: "Notifications",
            icon: Icons.notifications_outlined,
            onTap: () {},
          ),
          buildSettingItem(
            title: "Theme",
            subtitle: "System",
            icon: Icons.brightness_6_outlined,
            onTap: () {},
          ),
          buildSettingItem(
            title: "Language",
            subtitle: "English",
            icon: Icons.language_outlined,
            onTap: () {},
          ),
          const Divider(),

          /// Section: Account
          buildSectionTitle("Account"),
          buildSettingItem(
            title: "Manage Account",
            icon: Icons.person_outline,
            onTap: () {},
          ),
          buildSettingItem(
            title: "Sign Out",
            icon: Icons.logout,
            onTap: () {},
            isDestructive: true,
          ),
          const Divider(),

          /// Section: About
          buildSectionTitle("About"),
          buildSettingItem(
            title: "App Version",
            subtitle: "1.0.0",
            icon: Icons.info_outline,
          ),
          buildSettingItem(
            title: "Privacy Policy",
            icon: Icons.privacy_tip_outlined,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
