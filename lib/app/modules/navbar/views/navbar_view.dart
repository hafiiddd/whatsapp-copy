import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:whatsapp/app/modules/call/views/call_view.dart';
import 'package:whatsapp/app/modules/chats/views/chats_view.dart';
import 'package:whatsapp/app/modules/comunities/views/comunities_view.dart';
import 'package:whatsapp/app/modules/settings/views/settings_view.dart';
import 'package:whatsapp/app/modules/status/views/status_view.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  final List<Widget> _pages = [
    StatusView(),
    CallView(),
    ComunitiesView(),
    ChatsView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.selectedindex.value,
            children: _pages,
          )),
      bottomNavigationBar: SizedBox(
        height: 75,
        child: Obx(() => BottomNavigationBar(
              currentIndex: controller.selectedindex.value,
              onTap: (value) {
                controller.changeIndex(value);
              },
              // type: BottomNavigationBarType.shifting,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.black,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Image.asset(
                      "assets/images/icon-status.png",
                      color: controller.selectedindex == 0
                          ? Colors.white
                          : Colors.grey,
                      scale: 2,
                    ),
                    label: "Updates"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Image.asset(
                      "assets/images/icon-calls.png",
                      color: controller.selectedindex == 1
                          ? Colors.white
                          : Colors.grey,
                      scale: 2,
                    ),
                    label: "Calls"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Image.asset(
                      "assets/images/icon-communities.png",
                      color: controller.selectedindex == 2
                          ? Colors.white
                          : Colors.grey,
                      scale: 2,
                    ),
                    label: "Communities"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Image.asset(
                      "assets/images/icon-chats.png",
                      color: controller.selectedindex == 3
                          ? Colors.white
                          : Colors.grey,
                      scale: 2,
                    ),
                    label: "Chats"),
                BottomNavigationBarItem(
                    backgroundColor: Colors.black,
                    icon: Image.asset(
                      "assets/images/icon-settings.png",
                      color: controller.selectedindex == 4
                          ? Colors.white
                          : Colors.grey,
                      scale: 2,
                    ),
                    label: "Settings"),
              ],
            )),
      ),
    );
  }
}
