import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../components/navbar.dart';
import '../screens/pages/cart/cart.dart';
import '../screens/pages/category/category.dart';
import '../screens/pages/home/home.dart';
import '../screens/pages/profile/profile.dart';


class DashboardScreen extends StatefulWidget {
  static String route = "homescreen";

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  static const List<Widget> _navWidget = <Widget>[
    HomeScreenMain(),
    CategoryScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      drawer: const NavBar(),
      body: SafeArea(
        child: Stack(
          children: [
            IconButton(
              icon: const Icon(
                size: 40,
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: _navWidget.elementAt(_selectedIndex),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.window_sharp,
                  text: 'Category',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
