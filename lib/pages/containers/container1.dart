import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }
}

Widget DesktopContainer1() {
  return Container(
    child: Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your \nExpense to \nSave Money",
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Helps you to organize your income and expense",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        label: Text(
                          "Try free Demo",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColors.primary,
                          ),
                          elevation: MaterialStateProperty.all(0),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              side: BorderSide(color: AppColors.primary),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "- Web, IOS and Andriod",
                      style:
                          TextStyle(color: Colors.grey.shade500, fontSize: 20),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 530,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain),
            ),
          ),
        ),
        
      ],
    ),
  );
}

Widget MobileContainer1() {
  return Container(
    child: Column(
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(illustration1), fit: BoxFit.contain)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Track your \nExpense to \nSave Money",
          style: TextStyle(
            fontSize: w! / 20,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Helps you to organize\nyour income and expense",
          style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 45,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
            label: Text(
              "Try free Demo",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                AppColors.primary,
              ),
              elevation: MaterialStateProperty.all(0),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  side: BorderSide(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "- Web, IOS and Andriod",
          style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
        )
      ],
    ),
  );
}
