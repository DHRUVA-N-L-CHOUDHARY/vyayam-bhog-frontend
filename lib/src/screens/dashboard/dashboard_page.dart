import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vyamshala/src/config/constants/strings.dart';
import 'package:vyamshala/src/controllers/dashboard_controller.dart';
import 'package:vyamshala/src/screens/cart_page.dart';
import 'package:vyamshala/src/screens/home_page.dart';
import 'package:vyamshala/src/screens/meals_main_page.dart';
import 'package:vyamshala/src/screens/menu_page.dart';
import 'package:vyamshala/src/screens/setting_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int tabIndex = 0;
  void changeTabIndex(int index)
  {
    setState(() {
      tabIndex = index;      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: tabIndex,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const MealsmainPage(),
            const MenuPage(),
            const OrderList(),
            const SettingsPage()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.redAccent,
        onTap: changeTabIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: tabIndex,
        items: [
          _bottomNavigationBarItem(
            icon: home,
            label: "Home",
          ),
          _bottomNavigationBarItem(
            icon: meal,
            label: "Meal",
          ),
          _bottomNavigationBarItem(
            icon: basket,
            label: "Cart",
          ),
          _bottomNavigationBarItem(
            icon: Profile,
            label: "Profile",
          )
        ],
      ),
    );
  }

  _bottomNavigationBarItem({required String icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(icon, scale:1.1, color: Colors.grey, ),
      activeIcon: Image.asset(icon, scale:1.1,  color: Colors.orange),
      label: label,
    );
  }
}
