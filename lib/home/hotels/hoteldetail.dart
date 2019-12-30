import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelist/utils/custom_button.dart';

class HotelDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<IconData> listIcon = [
      Icons.wifi,
      Icons.free_breakfast,
      Icons.pets,
      Icons.tv,
      Icons.pool,
    ];
    List<String> listExtension = [
      "Free Wifi",
      "Breakfast",
      "Pets",
      "Digital Tv",
      "Pool Access",
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'hoteldetail.png',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.photo_album,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Hotel Ambassador",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                Image.asset('rating.png'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16, top: 15, bottom: 20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "\$125",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "06 July - 25 July, 2 Guests",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: Color(0xffFD5739),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "4.2",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Very Good",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Text(
                      "23 reviews",
                      style: TextStyle(
                        color: Color(0xffFD5739),
                        fontSize: 17,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xffFD5739),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          children: <Widget>[
                            Icon(
                              listIcon[index],
                              color: Colors.grey,
                              size: 30,
                            ),
                            Text(
                              listExtension[index],
                              style: TextStyle(color: Color(0xff8B8A8D)),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Located in Rome, Ambassador luxury hotel is"
                  " situared at 0.2 km from city center and 1.2 km"
                  " from Colosseum. Other attractions like Trevi "
                  "Fountain and Trajan’s …",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "more",
                    style: TextStyle(
                      color: Color(0xffFD5739),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                          target: LatLng(10.8002794, 106.7039816),
                          zoom: 14.4746),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 25),
                          width: double.infinity,

                          decoration: BoxDecoration(
                            color: Color(0xff171717),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                      "Standard Twin Room",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Text(
                                      "\$125",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.infinity,
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                      "2 double beds \n2 rooms left!",
                                      style: TextStyle(color: Colors.grey),
                                    )),
                                    Expanded(
                                      child: CustomButton(

                                        borderRadius: BorderRadius.circular(8),
                                        child: Text(
                                          "View Room",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  borderRadius: BorderRadius.circular(30),
                  child: Text(
                    "Select a room",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('/readreview');
                  },
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "Read Reviews",
                      style: TextStyle(
                          color: Color(0xffFD5739),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
