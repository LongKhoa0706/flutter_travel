import 'package:flutter/material.dart';
import 'package:travelist/account/register/register.dart';
import 'package:travelist/account/resetpass/resetpass.dart';
import 'package:travelist/account/signin/signin.dart';
import 'package:travelist/home/dashboard.dart';
import 'package:travelist/home/flight/findflight.dart';
import 'package:travelist/home/flight/findflight_checkout.dart';
import 'package:travelist/home/flight/findflight_offer.dart';
import 'package:travelist/home/hotels/hoteldetail_readreviews.dart';
import 'package:travelist/home/hotels/hoteldetail_writereviews.dart';
import 'package:travelist/home/profile/profile_language.dart';
import 'package:travelist/home/travel/detailtravel.dart';
import 'package:travelist/introduce.dart';

import 'home/hotels/hoteldetail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ('/'),
      routes: <String,WidgetBuilder>{
        '/':(context)=> Introduce(),
        '/signin':(context)=>SignIn(),
        '/resetpass':(context)=>ResetPass(),
        '/register':(context)=>Register(),
        '/dashboard':(context)=>DashBoard(),
        '/detailhotel':(context)=>DetailTravel(),
        '/findflight':(context)=>FindFlights(),
        '/findflightoffer':(context)=>FindFlightOffer(),
        '/findflightcheckout':(context)=>FindFlightCheckout(),
        '/hoteldetail':(context)=>HotelDetail(),
        '/readreview':(context)=>ReadReviews(),
        '/writereview':(context)=>WriteReviews(),
        '/language':(context)=>Language(),
      },
    );
  }
}
