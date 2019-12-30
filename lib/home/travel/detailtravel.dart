import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:travelist/utils/custom_button.dart';

class DetailTravel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('item2.png'), fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    Align(
                      alignment: Alignment.center,
                      child: Column(
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
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Image.asset('rating.png'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.only(left: 16, top: 20, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Capital of Roman Empire",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rome's history spans more than 2,500 years. While Roman"
                    " mythology dates the founding of Rome at around 753 BC,"
                    " the site has been inhabited for much longer, making it"
                    " one of the oldest continuously occupied sites in Europe.",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The city's early population originated from a"
                    " mix of Latins, Etruscans and Sabines. Eventually,"
                    " the city successively became the capital of the Roman "
                    "Kingdom, the Roman Republic and the Roman Empire, "
                    "and is regarded as one of the birthplaces of Western civilisation and by some…",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "More",
                      style: TextStyle(
                        color: Color(0xffFD5739),
                      ),
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Top experiences",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "Show More",
                        style: TextStyle(color: Color(0xff808B8A8D)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset('top1.png'),
                        Column(
                          children: <Widget>[
                            Image.asset('top2.png'),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Image.asset('top3.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    child: Stack(
                                      children: <Widget>[
                                        Image.asset('top4.png'),
                                        Positioned(
                                          top: 25,
                                          left: 20,
                                          child: Text(
                                            "13+",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Italian Food",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(""
                        "Italian cuisine has developed over the centuries."
                        " Although the country known as Italy did not unite "
                        "until the 19th century, the cuisine can claim traceable "
                        "roots as far back as the 4th century BCE. Food and culture "
                        "was very important at that time as we can see from the cookbook (Apicius) which dates back to first century BC.",style: TextStyle(color: Colors.white,fontSize: 14),),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Restaurants",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Text(
                        "Show More",
                        style: TextStyle(color: Color(0xff808B8A8D)),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context,int index){
                      return Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 135,
                          height: 160,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage('relax.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Align(alignment: Alignment.bottomCenter,child: Text("Bocconcino",style: TextStyle(color: Colors.white,fontSize: 18),),),
                          ),
                        ),
                      );
                    },),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(

                    borderRadius: BorderRadius.circular(30),
                    child: Text("Book a trip ",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
