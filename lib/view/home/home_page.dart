import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopping_app/controller/bottom_navigation_controller.dart';
import 'package:shopping_app/view/cart/cart_page.dart';
import 'package:shopping_app/view/dashboard/user_dashboard.dart';
import 'package:shopping_app/view/logout/logout_page.dart';

class HomePage extends StatelessWidget {

  BottomNavigationController bottomNavigationController = Get.put(BottomNavigationController());

  HomePage({Key? key}) : super(key: key);

  final screens = [UserDashboard(), CartPage(), LogoutPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx( ()=> IndexedStack(
        index: bottomNavigationController.currentIndex.value,//indext ee je number ta thakbe list er sei position er screen ta show korbe.
          children: screens,//this is list of screen
        ),
      ),
      bottomNavigationBar: Obx( ()=>
        BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          // type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          showSelectedLabels: true,
          // selectedIconTheme: IconThemeData(color: Colors.green),
          onTap: (index) {
            bottomNavigationController.changeIndex(index);
          },
          currentIndex: bottomNavigationController.currentIndex.value,//now all value will set according to this value
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home
              ),
              label: "Home",
              backgroundColor: Colors.deepPurple,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.shop
              ),
              label: "Cart",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.logout
              ),
              label: "Logout",
              backgroundColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
