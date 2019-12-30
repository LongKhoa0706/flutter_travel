import 'package:flutter/material.dart';
import 'package:travelist/home/chat/chat.dart';
import 'package:travelist/home/flight/flight.dart';
import 'package:travelist/home/hotels/hotel.dart';
import 'package:travelist/home/profile/profile.dart';
import 'package:travelist/home/travel/travel.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentindex = 0;
  List<Widget> listScreen = [
    Travel(),
    Flight(),
    Chat(),
    Hotel(),
    Profile(),



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff171717),
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel,color: Color(0xff8B8A8D),),
            title: Text("Travel",style: TextStyle(color: Color(0xff8B8A8D),),),
            activeIcon: Icon(Icons.card_travel,color: Color(0xffFD5739),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active,color: Color(0xff8B8A8D),),
            title: Text("Flight",style: TextStyle(color: Color(0xff8B8A8D),),),
            activeIcon: Icon(Icons.airplanemode_active,color: Color(0xffFD5739),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble,color: Color(0xff8B8A8D),),
            title: Text("Chatbox",style: TextStyle(color: Color(0xff8B8A8D),),),
            activeIcon: Icon(Icons.chat_bubble,color: Color(0xffFD5739),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel,color: Color(0xff8B8A8D),),
            title: Text("Hotels",style: TextStyle(color: Color(0xff8B8A8D),),),
            activeIcon: Icon(Icons.hotel,color: Color(0xffFD5739),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color(0xff8B8A8D),),
            title: Text("Profile",style: TextStyle(color: Color(0xff8B8A8D),),),
            activeIcon: Icon(Icons.person,color: Color(0xffFD5739),),
          ),
        ],
        onTap: (index){
          setState(() {
            this.currentindex = index;
          },);
        },
      ),
      body: IndexedStack(
        index: currentindex,
        children: listScreen,
      ),
    );
  }
}
