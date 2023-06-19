import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            // <-- SEE HERE
            decoration: BoxDecoration(color: Colors.white),
            accountName: Text(
              "Shishir Bhandari",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "Bhandarishishir.com.np",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: FlutterLogo(),
          ),
          const Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Page 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Page 2'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
