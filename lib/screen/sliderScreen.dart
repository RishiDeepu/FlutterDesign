import 'package:flutter/material.dart';
import 'package:demo_test/models/sliderModel.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 300,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: collection.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                left: 30, right: 10, top: 8, ),
              child: Container(
                width: 300,
                height: 110,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          collection[index]['picture'],
                        )),
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  children: [
                    Positioned(
                      child: Icon(
                        collection[index]['Icon'],
                        size: 30,
                        color: Colors.white,
                      ),
                      top: 125,
                    ),
                    Positioned(
                        left: 268,
                        top: 125,
                        child: Icon(
                          collection[index]['icon2'],
                          size: 30,
                          color: Colors.white,
                        )),
                    Positioned(
                        top: 212,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF253a6b),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              )),
                          width: 300,
                          height: 80,
                          child: Row(
                            children: [
                              SizedBox(width: 18,),
                              Text(collection[index]['name'],style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                              ),),
                              SizedBox(width: 168,),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.indigoAccent,
                                size: 30,
                              )
                            ],
                          ),
                        )
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

