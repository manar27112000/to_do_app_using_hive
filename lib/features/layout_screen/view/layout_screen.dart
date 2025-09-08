import 'package:flutter/material.dart';
import 'package:todo_list1/features/favourites_screen/view/favourite_screen.dart';
import 'package:todo_list1/features/layout_screen/view/widgets/bottom_nav_bar.dart';
import 'package:todo_list1/features/tasks_screen/view/tasks_screen.dart';
import 'package:todo_list1/features/search_screen/view/search_screen.dart';
import 'package:todo_list1/features/settings_screen/view/settings_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    TasksScreen(),
    FavouriteScreen(),
    SearchScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
