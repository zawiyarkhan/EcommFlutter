import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
