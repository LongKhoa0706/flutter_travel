import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    List<String> abc = List<String>.generate(30, (counter) => " $counter");
    List<String> language = [
      "Arabic",
      "Chinese",
      "Danish",
      "Dutch",
      "English",
      "Finnish",
      "French",
      "German",
      "Greek",
      "Indonesian",
    ];
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
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text("Language",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: 20,
                ),
                SizedBox(

                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: language.length,
                    itemBuilder: (context, int index) {
                      return Text(
                        language[index],
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
