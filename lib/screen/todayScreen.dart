import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodayScreen extends StatefulWidget {
  final Map data;

  TodayScreen(this.data);

  @override
  _TodayScreenState createState() => _TodayScreenState();
}

class _TodayScreenState extends State<TodayScreen> {
  @override
  Widget build(BuildContext context) {
    print("data ${widget.data}");
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 20),
      child: widget.data['name'] == "FarCry 6"
          ? Container(
              width: MediaQuery.of(context).size.width,
              height: 430,
              // color: Colors.pink,
              decoration: BoxDecoration(
                  color: Colors.purple,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        widget.data['picture'],
                      )),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Positioned(
                    top: 268,
                    child: Container(
                      width: 333,
                      height: 162,
                      decoration: BoxDecoration(
                          color: Color(0xFF253a6b),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                          )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  widget.data['name'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              SizedBox(
                                width: 190,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  widget.data['icon1'],
                                  color: Colors.indigoAccent,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,

                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 17),
                                  child: Container(
                                    width: 109,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF203354),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                            width: 30,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        "images/cal.png"))),
                                          ),
                                        ),
                                        // SizedBox(width: 5,),
                                        Container(
                                            width: 71,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3, bottom: 3),
                                              child: Text(
                                                widget.data['date'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Container(
                                    width: 78,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF203354),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10,
                                              right: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                            width: 25,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(widget
                                                            .data[
                                                        'subName1Picture']))),
                                          ),
                                        ),
                                        Container(
                                            width: 30,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3, bottom: 3),
                                              child: Text(
                                                widget.data['subName1'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 7),
                                  child: Container(
                                    width: 90,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF203354),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5,
                                              right: 3,
                                              top: 3,
                                              bottom: 3),
                                          child: Container(
                                            width: 25,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(widget
                                                            .data[
                                                        'subName2Picture']))),
                                          ),
                                        ),
                                        // SizedBox(width: 5,),
                                        Container(
                                            width: 52,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 3, bottom: 3,right: 5),
                                              child: Text(
                                                widget.data['subName2'],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(right: 200),
                            child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xFF203354),
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 3,
                                        top: 3,
                                        bottom: 3),
                                    child: Container(
                                      width: 25,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(widget
                                                  .data[
                                              'tagImage']))),
                                    ),
                                  ),
                                  // SizedBox(width: 5,),
                                  Container(
                                      width: 52,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 3, bottom: 3,right: 5),
                                        child: Text(
                                          widget.data['off'],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 35,
                            // color: Colors.pink,
                            child: Row(
                              children: [
                                Container(
                                  width: 80,
                                  // color: Colors.green,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 25),
                                    child: Text("Download",style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Container(
                                    width: 30,
                                    height: 25,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'appStore']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    width: 28,
                                    height: 15,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'android']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    width: 35,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'stadia']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    width: 30,
                                    height: 25,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(60),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'steam']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: Container(
                                    width: 23,
                                    height: 25,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'xbox']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    width: 23,
                                    height: 25,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'play']))),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                    width: 23,
                                    height: 25,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(widget
                                                .data[
                                            'nintendo']))),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )):
           Container(
          width: MediaQuery.of(context).size.width,
          height: 403,
          decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    widget.data['picture'],
                  )),
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
            children: [
              Positioned(
                top: 268,
                child: Container(
                  width: 333,
                  height: 135,
                  decoration: BoxDecoration(
                      color: Color(0xFF253a6b),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.data['name'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            width: 143,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              widget.data['icon1'],
                              color: Colors.indigoAccent,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,

                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 17),
                              child: Container(
                                width: 109,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF203354),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 3,
                                          bottom: 3),
                                      child: Container(
                                        width: 30,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(
                                                    "images/cal.png"))),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Container(
                                        width: 65,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, bottom: 3),
                                          child: Text(
                                            widget.data['date'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Container(
                                width: 78,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF203354),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10,
                                          right: 3,
                                          top: 3,
                                          bottom: 3),
                                      child: Container(
                                        width: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(widget
                                                    .data[
                                                'subName1Picture']))),
                                      ),
                                    ),
                                    Container(
                                        width: 30,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, bottom: 3),
                                          child: Text(
                                            widget.data['subName1'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Container(
                                width: 90,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color(0xFF203354),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5,
                                          right: 3,
                                          top: 3,
                                          bottom: 3),
                                      child: Container(
                                        width: 25,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: AssetImage(widget
                                                    .data[
                                                'subName2Picture']))),
                                      ),
                                    ),
                                    // SizedBox(width: 5,),
                                    Container(
                                        width: 52,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 3, bottom: 3,right: 5),
                                          child: Text(
                                            widget.data['subName2'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        // color: Colors.pink,
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              // color: Colors.green,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Download",style: TextStyle(color: Colors.blueGrey,fontSize: 12),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Container(
                                width: 30,
                                height: 25,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'appStore']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 28,
                                height: 15,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'android']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 35,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'stadia']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 30,
                                height: 25,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(60),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'steam']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 23,
                                height: 25,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'xbox']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 23,
                                height: 25,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'play']))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 23,
                                height: 25,
                                // color: Colors.blue,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(widget
                                            .data[
                                        'nintendo']))),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))
    );
  }
}
