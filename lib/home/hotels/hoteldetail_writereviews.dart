import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelist/utils/custom_button.dart';
class WriteReviews extends StatelessWidget {
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
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Text("Write a review",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.center,
                  child: FlutterRatingBar(
                    initialRating: 3,
                    fillColor: Colors.amber,
                    borderColor: Colors.amber.withAlpha(50),
                    allowHalfRating: true,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.center,child: Text("Tap a star to rate",style: TextStyle(color: Colors.grey,fontSize: 15),),),
                SizedBox(
                  height: 10,
                ),
                Form(
                  child: Column(
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
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Title",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: TextFormField(
                          maxLines: 8,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            border: InputBorder.none,

                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Review",
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CustomButton(
                        borderRadius: BorderRadius.circular(30),
                        child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
