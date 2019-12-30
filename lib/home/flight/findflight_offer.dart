import 'package:flutter/material.dart';
import 'package:travelist/utils/custom_button.dart';

class FindFlightOffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xffFD5739),
            size: 30,
          ),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Bucharest - Rome",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "26 Aug",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFD5739),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "26 Aug",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "26 Aug",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ListView.builder(physics:NeverScrollableScrollPhysics() ,itemCount: 10,shrinkWrap: true,itemBuilder: (context,int index){
                  return Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/findflightcheckout');
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 5, top: 5),
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Bucharest OTP",style: TextStyle(color: Colors.white),),
                                    Text("06:40",style: TextStyle(color: Colors.white),),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("SR 0412\n1 hr 55 min",style: TextStyle(color: Color(0xff808B8A8D)),),

                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: 100,
                                child: Row(
                                  children: <Widget>[
                                    Flexible(
                                        child: Divider(
                                          color: Colors.white,
                                          thickness: 2,
                                          indent: 10,
                                        )),
                                    Icon(
                                      Icons.flight_takeoff,
                                      color: Color(0xffFD5739),
                                      size: 30,
                                    ),
                                    Flexible(
                                        child: Divider(
                                          color: Colors.white,
                                          thickness: 2,
                                          endIndent: 10,
                                        )),

                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Rome CIA",style: TextStyle(color: Colors.white),),
                                    Text("09:35",style: TextStyle(color: Colors.white),),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 110,
                                      height: 40,
                                      child: CustomButton(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Text("\$125",style: TextStyle(color: Colors.white),),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
