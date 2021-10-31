import 'package:flutter/material.dart';
import 'package:demo_test/models/sliderModel.dart';

class ScrollScreenTwo extends StatefulWidget {
  @override
  _ScrollScreenTwoState createState() => _ScrollScreenTwoState();
}

class _ScrollScreenTwoState extends State<ScrollScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 53,
      // color: Colors.blue,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: titlesScrolltwo.length,
          itemBuilder: (context,index){
            return index==0?Padding(
              padding: const EdgeInsets.only(
                left: 35,
                top: 8,
                bottom: 8,
                // right: 10
              ),
              child: Container(
                width: titlesScrolltwo[index]['width'],
                height: titlesScrolltwo[index]['height'],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: titlesScrolltwo[index]['borderColor']),
                  color:Color(0xFF253a6b),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 26,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(titlesScrolltwo[index]['picture'],)
                            )
                        ),
                      ),
                    ),
                    // SizedBox(width: 5,),
                    Text(titlesScrolltwo[index]['name'],style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ):
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 8,
                bottom: 8,
                // right: 10
              ),
              child: Container(
                width: titlesScrolltwo[index]['width'],
                height: titlesScrolltwo[index]['height'],
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: titlesScrolltwo[index]['borderColor']),
                  color:Color(0xFF253a6b),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(titlesScrolltwo[index]['picture'])
                            )
                        ),
                      ),
                    ),
                    Text(titlesScrolltwo[index]['name'],style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
