import 'package:flutter/material.dart';
import 'package:travelist/utils/custom_button.dart';

class FindFlights extends StatefulWidget {
  @override
  _FindFlightsState createState() => _FindFlightsState();
}

class _FindFlightsState extends State<FindFlights> {
  DateTime _dateTimeFlyBack, _dateTimeFlyOut;

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
            size: 30,
            color: Color(0xffFD5739),
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Find Flights",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 37,
                  child: ListView.builder(
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 160,
                          decoration: BoxDecoration(
                            color: Color(0xffFD5739),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Return",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "From",
                              style: TextStyle(
                                color: Color(0xff8B8A8D),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "To",
                              style: TextStyle(
                                color: Color(0xff8B8A8D),
                              ),
                            ),
                            TextFormField(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 70,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff171717),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Fly Out",
                                      style: TextStyle(
                                        color: Color(0xff8B8A8D),
                                      ),
                                    ),
                                    TextFormField(
                                      onTap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime(2040),
                                        ).then((date) {
                                          setState(() {
                                            _dateTimeFlyOut = date;
                                          });
                                        });
                                      },
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          hintText: (_dateTimeFlyOut == null
                                              ? 'Select date'
                                              : _dateTimeFlyOut.toString())),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.grey,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff171717),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Fly Back",
                                      style: TextStyle(
                                        color: Color(0xff8B8A8D),
                                      ),
                                    ),
                                    TextFormField(
                                      onTap: () {
                                        showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          initialDatePickerMode:
                                              DatePickerMode.day,
                                          lastDate: DateTime(2040),
                                        ).then((date) {
                                          setState(() {
                                            _dateTimeFlyBack = date;
                                            print(date);
                                          });
                                        });
                                      },
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                      decoration: InputDecoration(
                                          hintText: (_dateTimeFlyBack == null
                                              ? 'Select date'
                                              : _dateTimeFlyBack.toString()),
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, top: 5),
                        width: double.infinity,
                        height: 69,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff171717),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Passengers",
                              style: TextStyle(
                                color: Color(0xff8B8A8D),
                              ),
                            ),
                            TextFormField(
                              onTap: () {
                                showBottomSheet(
                                    context: context, builder: (context) {});
                              },
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/findflightoffer');
                        },
                        borderRadius: BorderRadius.circular(30),
                        child: Text(
                          "Search",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      )
                    ],
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
