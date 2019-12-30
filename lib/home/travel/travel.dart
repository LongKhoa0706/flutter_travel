import 'package:flutter/material.dart';

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Travel",
          style:
              TextStyle(color: Colors.white, fontSize: 30, fontFamily: 'play'),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
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
                        image: AssetImage('home.png'), fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Trip to Rome",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "a journey into the past",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
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
                    Text(
                      "Relaxation",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Show More",
                      style: TextStyle(color: Color(0xff8B8A8D)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,int index){
                    return  Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/detailhotel');
                        },
                        child: Container(
                          width: 133.84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('relax.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "France",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },)
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Hiking",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Show More",
                      style: TextStyle(color: Color(0xff8B8A8D)),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                    height: 200,
                    child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,int index){
                      return  Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 133.84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('relax.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Moroco",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      );
                    },)
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
