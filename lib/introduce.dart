import 'package:flutter/material.dart';
import 'package:travelist/utils/custom_button.dart';

class Introduce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('logo.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Travelisto",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset('photo.png'),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Plan your travel anytime, anywhere.",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 50,
                ),
                Text("Plan your travel anytime, anywhere."),
                SizedBox(
                  height: 70,
                ),
                CustomButton(
                  borderRadius: BorderRadius.circular(30),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/register');
                  },
                  child: Text(
                    "Create an account",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, '/signin');
                  },
                  child: Text(
                    "Already on Travel? Log In",
                    style: TextStyle(color: Colors.white),
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
