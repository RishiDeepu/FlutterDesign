import 'package:flutter/material.dart';
import 'package:demo_test/models/sliderModel.dart';

class ScrollScreenOne extends StatefulWidget {
  @override
  _ScrollScreenOneState createState() => _ScrollScreenOneState();
}

class _ScrollScreenOneState extends State<ScrollScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 43,
      // color: Colors.blue,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: titlesScroll.length,
          itemBuilder: (context,index){
            return index==0?Padding(
              padding: const EdgeInsets.only(
                left: 35,
                top: 8,
                bottom: 8,
                // right: 10
              ),
              child: Container(
                width: titlesScroll[index]['width'],
                height: titlesScroll[index]['height'],
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: titlesScroll[index]['color']
                ),
                child: Center(child: Text(titlesScroll[index]['name'],style: TextStyle(color: titlesScroll[index]['textcolor'],),)),
              ),
            ):
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                top: 8,
                bottom: 8,
                // right: 10
              ),
              child: Container(
                width: titlesScroll[index]['width'],
                height: titlesScroll[index]['height'],
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: titlesScroll[index]['color']
                ),
                child: Center(child: Text(titlesScroll[index]['name'],style: TextStyle(color: titlesScroll[index]['textcolor'],),)),
              ),
            );
          }
      ),
    );
  }
}
