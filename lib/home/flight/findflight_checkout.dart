import 'package:flutter/material.dart';
import 'package:travelist/utils/custom_button.dart';

class FindFlightCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xffFD5739),
            size: 30,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16,bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Check Out",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Credit Card Details",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Number card",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Select Card Type",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name on card",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Billing Information",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Street address",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "City",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff171717),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xffEDEDED),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Post Code",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff171717),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xffEDEDED),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Country",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Contact Details",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff171717),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          style: TextStyle(
                            color: Color(0xffEDEDED),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "City",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff171717),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xffEDEDED),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Post Code",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(left: 10),
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xff171717),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                style: TextStyle(
                                  color: Color(0xffEDEDED),
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Country",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      CustomButton(
                        borderRadius: BorderRadius.circular(30),
                        child: Text("Play Now",style: TextStyle(color: Colors.white,fontSize: 18),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
