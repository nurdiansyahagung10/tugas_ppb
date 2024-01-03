import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:fan_side_drawer/fan_side_drawer.dart';

void main() {
  runApp(const Aplikasisaya());
}

class Aplikasisaya extends StatelessWidget {
  const Aplikasisaya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Halamanawal(),
    );
  }
}

class Halamanawal extends StatefulWidget {
  const Halamanawal({super.key});

  @override
  _Halamanawalstate createState() => _Halamanawalstate();
}

class _Halamanawalstate extends State {
  int selectedIndex = 1;

  List screen = [const Page1(), const Home(), const Profile()];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<DrawerMenuItem> get menuItems => [
        DrawerMenuItem(
            title: 'Home',
            icon: Icons.house_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Account Details',
            icon: Icons.account_circle_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Profile',
            icon: Icons.info_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Wallet',
            icon: Icons.wallet_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Transaactions',
            icon: Icons.attach_money_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Messages',
            icon: Icons.message_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Tickets',
            icon: Icons.support_agent_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Orders',
            icon: Icons.format_list_bulleted_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'App Settings',
            icon: Icons.adb_sharp,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Notifications',
            icon: Icons.alarm_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Subscribtion Plans',
            icon: Icons.question_answer_rounded,
            iconSize: 15,
            onMenuTapped: () {}),
        DrawerMenuItem(
            title: 'Shops',
            icon: Icons.store,
            iconSize: 15,
            onMenuTapped: () {}),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'RPL B',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        width: 255,
        child: FanSideDrawer(
            selectedColor: Colors.black,
            selectedItemBackgroundColor: Colors.blueGrey,
            drawerType: DrawerType.box,
            menuItems: menuItems),
      ),
      body: SafeArea(
        child: screen.elementAt(selectedIndex),
      ),
      bottomNavigationBar: MoltenBottomNavigationBar(
        barColor: const Color.fromARGB(255, 241, 195, 118),
        // domeCircleColor: Color.fromARGB(255, 96, 108, 93),
        domeCircleColor: const  Color.fromARGB(255, 228, 146, 4),
        selectedIndex: selectedIndex,
        onTabChange: (clickedIndex) {
          setState(() {
            selectedIndex = clickedIndex;
          });
        },
        tabs: [
          MoltenTab(
              icon: const Icon(Icons.explore), unselectedColor: Colors.black),
          MoltenTab(
              icon: const Icon(Icons.home), unselectedColor: Colors.black),
          MoltenTab(
              icon: const Icon(Icons.person), unselectedColor: Colors.black),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("halaman explorer"),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
      height: 180,
      decoration: const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [Colors.black, Colors.white],
  ),
  image: DecorationImage(
    image: AssetImage('assets/image/03.jpg'),
    fit: BoxFit.cover,
  ),
),


      child: const Center(
        child: Text("Mushroom Explorer",
        style: TextStyle(shadows: [Shadow(
          blurRadius: 10.0,
          color: Color.fromARGB(255, 48, 48, 48),
          offset: Offset(2.0, 2.0),
        ),
        ],
        color: Colors.white, fontSize: 24,
        fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("halaman explorer"),
    );
  }
}
