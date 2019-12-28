import 'package:flutter/material.dart';
class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Travel",style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: 'play'),),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage('home.png'),
                      fit: BoxFit.cover
                    ),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Text("Trip to Rome",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                            Text("a journey into the past",style: TextStyle(color: Colors.white,fontSize: 17),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Relaxation",style: TextStyle(color: Colors.white,fontSize: 20),),

                    Text("Show More",style: TextStyle(color: Color(0xff8B8A8D)),)
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
