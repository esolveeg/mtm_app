
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtm/app/components/SlideIn.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xff010001),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        const routes = [
          '/home',
          '/offers',
          '/home',
          '/services',
          '/profile',
        ];
        print(routes[value]);
        Get.toNamed("/services");
        // Respond to item press.
      },
      items: [
        BottomNavigationBarItem(
          label: '',
          icon: SlideIn(vertical: true, child: Icon(Icons.roofing)),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SlideIn(
              vertical: true, child: Icon(Icons.local_fire_department)),
        ),
        BottomNavigationBarItem(
          label: '',
          icon:
              SlideIn(vertical: true, child: Icon(Icons.add_circle_outline)),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SlideIn(
            vertical: true,
            child: Icon(
              Icons.person_outline,
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: '',
          icon: SlideIn(
            vertical: true,
            child: Icon(
              Icons.menu_outlined,
            ),
          ),
        )
      ],
    );
  }
}