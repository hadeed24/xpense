import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container1State();
}

class _Container1State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }
}

Widget DesktopContainer2() {
  return Column(
    children: [
      Container(
        height: 25,
      ),
      Container(
        height: 900,
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.primary),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    right: -20,
                    top: -20,
                    child: Container(
                      height: 320,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector1), fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -20,
                    left: -20,
                    child: Container(
                      height: 320,
                      width: 320,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(vector2), fit: BoxFit.contain),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 43,
                    right: 43,
                    bottom: 0,
                    child: Container(
                      width: double.infinity,
                      height: 712,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(dashboard),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companylogo(fb),
                  companylogo(google),
                  companylogo(cocacola),
                  companylogo(samsung),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget MobileContainer2() {
  return Column(
    children: [
      Container(
        height: 25,
      ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(color: AppColors.primary),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
              child: Container(
                height: 195,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(dashboard), fit: BoxFit.contain)),
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companylogo(fb),
                  SizedBox(
                    height: 8,
                  ),
                  companylogo(google),
                  SizedBox(
                    height: 8,
                  ),
                  companylogo(cocacola),
                  SizedBox(
                    height: 8,
                  ),
                  companylogo(samsung)
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget companylogo(String image) {
  return Container(
    width: 160,
    height: 36,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain)),
  );
}
