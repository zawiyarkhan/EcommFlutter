import 'package:devils_prada/views/bottomNavPages/homepage.dart';
import 'package:devils_prada/views/bottomNavPages/profile.dart';
import 'package:devils_prada/views/bottomNavPages/shop_list.dart';
import 'package:devils_prada/views/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  final pages = [
    Homepage(),
    Profile(),
    ShopList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                    text: "Home",
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Shops",
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Profile",
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.selected,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
            radius: selected ? 2.9 : 0,
            backgroundColor: selected ? Colors.black : Colors.grey
            //foregroundColor: Colors.black,
            ),
        SizedBox(
          height: 9,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            text,
            style: selected
                ? GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                : GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
          ),
        )
      ],
    );
  }
}
