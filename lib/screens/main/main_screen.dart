import 'package:admin/components/side_menu.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                // default flex = 1
                // and takes 1/6 part of the screen
                child: SideMenu()),
            Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: DashboardScreen())
          ],
        ),
      ),
    );
  }
}
