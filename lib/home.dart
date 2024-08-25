import 'package:flutter/material.dart';
import 'package:todo_app/app_colors.dart';
import 'package:todo_app/tabs/setting_tab.dart';
import 'package:todo_app/tabs/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routename = "HomeScreen";
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "ToDo App",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primary,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              width: 4,
              color: Colors.white,
            )),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8,
        padding: EdgeInsets.zero,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.grey,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,size: 30,), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30,), label: "Setting"),
          ],
        ),
      ),

      body: tabs[selectedIndex],
    );
  }
  List<Widget> tabs=[
    TasksTab(),
    SettingsTab()
  ];
}
