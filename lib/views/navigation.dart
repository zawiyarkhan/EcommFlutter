// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devils_prada/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'bottomNavPages/homepage.dart';
import 'bottomNavPages/profile.dart';
import 'bottomNavPages/shop_list.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Homepage(),
          ShopList(),
          Profile(),
        ],
      ),

      //bottomNavigationBar: NavvBar(),

      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: Color(0xff4A145B),
      //     border: Border.all(width: 2),
      //     borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      //   ),
      //   //color: Colors.black,
      //   child: Padding(
      //     padding: const EdgeInsets.all(12.0),
      //     child: GNav(
      //         selectedIndex: selectedIndex,
      //         onTabChange: onItemClicked,
      //         gap: 4,
      //         backgroundColor: Color(0xff4A145B),
      //         //tabBackgroundColor: Colors.grey.shade600,
      //         color: Colors.white,
      //         activeColor: Color(0xff9C3587),
      //         //rippleColor: Colors.black,
      //         //hoverColor: Colors.black,
      //         padding: EdgeInsets.all(8),
      //         tabs: [
      //           GButton(
      //             icon: Icons.home_filled,
      //             text: 'Home',
      //             textStyle: GoogleFonts.roboto(
      //               fontSize: 20,
      //               color: Colors.white,
      //             ),
      //           ),
      //           GButton(
      //             icon: Icons.shopify,
      //             text: 'Shops',
      //             textStyle:
      //                 GoogleFonts.roboto(fontSize: 20, color: Colors.white
      //                     //color: Color(0xff9C3587),
      //                     ),
      //           ),
      //           GButton(
      //             icon: Icons.person,
      //             text: 'Profile',
      //             //textSize: 25,
      //             textStyle: GoogleFonts.roboto(
      //               fontSize: 20,
      //               color: Colors.white,
      //             ),
      //           ),
      //         ]),
      //   ),
      // ),
    );
  }
}
