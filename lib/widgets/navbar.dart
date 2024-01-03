import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu),
        navLogo(),
      ],
    ),
  );
}

Widget DesktopNavBar() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton("Features"),
            navButton("About us"),
            navButton("Pricing"),
            navButton("Feedback"),
          ],
        ),
        Container(
          height: 45,
          child: ElevatedButton(
            style: borderedButtonStyle,
            child: Text(
              "Request a Demo",
              style: TextStyle(color: AppColors.primary),
            ),
            onPressed: () {},
          ),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    child: TextButton(
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 18),
      ),
      onPressed: () {},
      style: ButtonStyle(),
    ),
  );
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
  );
}
