import 'package:flutter/material.dart';
import 'package:ppos_pnu/pages/user_menu_page.dart';
import 'package:ppos_pnu/pages/user_pages/get_points_page.dart';
import 'package:ppos_pnu/pages/user_pages/profile_page.dart';
import 'package:ppos_pnu/pages/user_pages/rating_page.dart';


class UserMenuPage extends StatefulWidget {
  const UserMenuPage({super.key});

  @override
  State<UserMenuPage> createState() => _UserMenuPageState();
}

class _UserMenuPageState extends State<UserMenuPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: News',
      style: optionStyle,
    ),
    Text(
      'Index 1: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 2: Shop',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Tab> profileTabs = <Tab>[
    Tab(text: 'Profile'),
    Tab(text: 'Rating'),
    Tab(text: 'Get points'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TabBar(
                    tabs: profileTabs,
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ProfilePage(),
              MyListScreen(),//OutgoingPage(),
              QRViewExample(),//MissedPage(),
            ],
          ),
        )
    );
  }
}
