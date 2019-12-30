import 'package:flutter/material.dart';
import 'package:travelist/utils/custom_button.dart';

class Profile extends StatelessWidget {
  List<String> listNameOption = [
    "Language",
    "Currency",
    "Units",
    "Privacy Policy"
  ];
  List<String> listOption = ["English", "USD", "Imperial", "Read"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('person.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Long Khoa",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Color(0xffFD5739),
                              ),
                              Text(
                                "California",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.mail_outline,
                                color: Color(0xffFD5739),
                              ),
                              Text(
                                "hodanglongkhoa123@gmail.com",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: GestureDetector(
                          onTap: () {
                            switch (index) {
                              case 0:
                                Navigator.of(context).pushNamed('/language');
                            }
                          },
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Text(
                                    listNameOption[index],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Text(
                                  listOption[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xffFD5739),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                CustomButton(
                  child: Text("Sign Out",style: TextStyle(color: Colors.white),),
                  borderRadius: BorderRadius.circular(30),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
