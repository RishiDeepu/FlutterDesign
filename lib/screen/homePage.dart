import 'package:demo_test/models/sliderModel.dart';
import 'package:demo_test/models/todaySessionModel.dart';
import 'package:flutter/material.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';

import 'scrollScreenOne.dart';
import 'scrollScreentwo.dart';
import 'sliderScreen.dart';
import 'todayScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            color: Color(0xFF253a6b),
            height: 1.0,
          ),
        ),
        backgroundColor: Colors.black,
        title: Text(
          'John',
          style: TextStyle(color: Colors.white),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 8, bottom: 8),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54),
                image: DecorationImage(
                  image: AssetImage("images/john.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.search,
              size: 25,
              color: Colors.indigoAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 45,
              height: 40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          "images/noti.png",))),
            ),
            // Icon(Icons.notifications_none_outlined,
            //     size: 28, color: Colors.indigoAccent),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 2461,
          color: Colors.black,
          // color: Color(0xFF203354),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 216, top: 20),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SliderScreen(),
              SizedBox(
                height: 40,
              ),
              Divider(thickness: 1, color: Color(0xFF253a6b)),
              ScrollScreenOne(),
              ScrollScreenTwo(),
              Padding(
                padding: const EdgeInsets.only(right: 245, top: 30),
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TodayScreen(sessionsOne),
              SizedBox(
                height: 35,
              ),
              TodayScreen(sessionTwo),
              Padding(
                padding: const EdgeInsets.only(right: 175, top: 30),
                child: Text(
                  "This Week",
                  style: TextStyle(
                      color: Colors.indigoAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TodayScreen(sessionsOne),
              SizedBox(
                height: 35,
              ),
              TodayScreen(sessionTwo),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DefaultTabController(
        length: 3,
        child: BottomAppBar(
          color: Color(0xFF253a6b),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child:TabBar(
                indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Colors.indigoAccent,
                      width: 5.0
                  ),
                ),
              ),
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 8),
                  child: Tab(
                    icon: Icon(
                      Icons.list_rounded,
                      color: Colors.indigoAccent,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Tab(child: Image.asset("images/gcal.png",width: 40,),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30,),
                  child: Tab(icon: Icon(Icons.favorite_border_outlined, color: Colors.grey.shade700,size: 30,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
