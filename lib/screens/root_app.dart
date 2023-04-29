import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_dashboard/screens/dashboard.dart';
import 'package:sales_dashboard/screens/home.dart';

class RootApp extends StatelessWidget {
  final String routeName = "/root";
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: size.width,
        height: size.height,
        color: Colors.grey,
        child: BodyApp(),
      ),
    );
  }
}

class BodyApp extends StatefulWidget {
  const BodyApp({Key? key}) : super(key: key);

  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  List listOfMenuItems = [
    {
      "name": "Home",
      "icon": Icons.home_outlined,
      "widget": Home(),
      "isSelect": true
    },
    {
      "name": "Dashboard",
      "icon": Icons.dashboard_outlined,
      "widget": Dashboard(),
      "isSelect": false
    },
    {
      "name": "Task",
      "icon": Icons.task_outlined,
      "widget": Menu(),
      "isSelect": false
    },
    {
      "name": "Message",
      "icon": Icons.messenger_outline,
      "widget": Menu2(),
      "isSelect": false
    },
    {
      "name": "Stats",
      "icon": Icons.show_chart_outlined,
      "widget": Menu(),
      "isSelect": false
    },
    {
      "name": "Profile",
      "icon": Icons.person_outline_rounded,
      "widget": Menu2(),
      "isSelect": false
    },
    {
      "name": "Settings",
      "icon": Icons.settings_outlined,
      "widget": Menu(),
      "isSelect": false
    },
    {
      "name": "Add",
      "icon": Icons.add_outlined,
      "widget": Menu2(),
      "isSelect": false
    },
  ];
  int indexOfMenu = 0;
  void turnOff(int index) {
    listOfMenuItems.forEach((element) {
      setState(() {
        element["isSelect"] = false;
      });
    });
    setState(() {
      listOfMenuItems[index]["isSelect"] = !listOfMenuItems[index]["isSelect"];
      indexOfMenu = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      shadowColor: Color(0xff161717),
      child: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff242424),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 25, left: 10),
              height: size.height,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Color(0xff161717),
              ),
              child: Column(
                children: [
                  Icon(
                    Icons.data_saver_off_rounded,
                    color: Colors.amberAccent,
                    size: 45,
                  ),
                  Gap(50),
                  for (int index = 0;
                      index < listOfMenuItems.length - 1;
                      index++)
                    InkWell(
                      onTap: () {
                        turnOff(index);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: listOfMenuItems[index]["isSelect"]
                                ? Colors.black
                                : Colors.transparent),
                        margin: EdgeInsets.symmetric(vertical: 8),
                        child: Icon(
                          listOfMenuItems[index]["icon"],
                          color: listOfMenuItems[index]["isSelect"]
                              ? Colors.white
                              : Colors.white.withOpacity(0.7),
                          size: 25,
                        ),
                      ),
                    ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Icon(
                        listOfMenuItems[listOfMenuItems.length - 1]["icon"],
                        color: Colors.white.withOpacity(0.5),
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width * 0.90,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.13),
                              borderRadius: BorderRadius.circular(25)),
                          child: TextField(
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                            decoration: InputDecoration(
                              hintText: "Search here...",
                              hintStyle: GoogleFonts.poppins(
                                  color: Colors.white.withOpacity(0.3),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Text(
                          'Dashboard',
                          style: GoogleFonts.qwigley(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w300),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Kronos Codeur",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                    Gap(5),
                                    Text(
                                      "kronosCodeur@coding.com",
                                      style: GoogleFonts.poppins(
                                          color: Colors.white.withOpacity(0.3),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(10),
                              CircleAvatar(
                                backgroundColor: Colors.white.withOpacity(0.3),
                                radius: 30,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                              Gap(10),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  listOfMenuItems[indexOfMenu]["widget"]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 200,
      height: 200,
    );
  }
}

class Menu2 extends StatelessWidget {
  const Menu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      width: 200,
      height: 200,
    );
  }
}
