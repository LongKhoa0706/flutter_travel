import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class Hotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hotels",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff171717),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Where to?",
                        hintStyle: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Near You",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      "Show More",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 161,
                  child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/hoteldetail');
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Container(
                            width: 135,
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage('relax.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Plaza",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Deals",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text("Show More",style: TextStyle(color: Colors.grey,fontSize: 15),)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder: (context,int index){
                    return Padding(
                      padding: EdgeInsets.only(left: 10),
                      child:      Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Row(

                          children: <Widget>[
                            Image.asset('relax.png'),
                            Container(
                              width: 200,
                              padding: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Milano",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                      Text("\$120",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("3 Nights in Milano for as low as \$120 @ Hotel Paradiso",style: TextStyle(color: Colors.grey),),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("2 Deals Left",style: TextStyle(color: Color(0xffFD5739)),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("World Best Hotels",style: TextStyle(color: Colors.white,fontSize: 18),),
                    Text("Show More",style: TextStyle(color: Colors.grey,fontSize: 17),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset('top1.png'),
                    Image.asset('top2.png'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
