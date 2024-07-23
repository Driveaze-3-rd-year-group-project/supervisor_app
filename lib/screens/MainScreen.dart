import 'package:Samarasinghe/screens/dashboard.dart';
import 'package:Samarasinghe/screens/home.dart';
import 'package:Samarasinghe/screens/vehicles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'Dash.dart';
import 'Profile.dart';


class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => NavigationBar(
              height: 70,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) {
                controller.selectedIndex.value = index;
              },
              backgroundColor: Color(0x5AFFFFFF),
              indicatorColor: Colors.blueAccent.withOpacity(0.2),
              destinations: const [
                NavigationDestination(
                  icon: Icon(MaterialCommunityIcons.home_outline),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: Icon(Ionicons.car_outline),
                  label: 'Vehicles',
                ),
                NavigationDestination(
                  icon: Icon(Feather.tool),
                  label: 'Inventory',
                ),
                NavigationDestination(
                  icon: Icon(Feather.user),
                  label: 'Profile',
                ),
              ],
            ),
      ),
    );
  }
}


class NavigationController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> screens = [
    Dashboard(),
    Vehicles(),
    MyHomePage(),
    CombinedProfileSettingsPage(),
  ];
  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
