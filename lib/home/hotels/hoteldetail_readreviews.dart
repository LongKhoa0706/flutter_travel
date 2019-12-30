import 'package:flutter/material.dart';

class ReadReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xffFD5739),
            size: 30,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Reviews",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed('/writereview');
                        },
                        child: Text(
                          "Write a reivew",
                          style: TextStyle(
                            color: Color(0xffFD5739),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xffFD5739),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 SizedBox(
                  height: MediaQuery.of(context).size.height,
                   child: ListView.builder(scrollDirection: Axis.vertical,shrinkWrap: true,itemCount: 10,itemBuilder: (context,int index){
                     return Padding(
                       padding: EdgeInsets.only(bottom: 10),
                       child:  Container(
                         padding: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
                         width: double.infinity,

                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Color(0xff171717),
                         ),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Text("Nice Place",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                 Text("Mike Columbo",style: TextStyle(color: Colors.white),)
                               ],
                             ),
                             SizedBox(
                               height: 5,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: <Widget>[
                                 Image.asset('rating.png'),
                                 Text("June 2017",style: TextStyle(color: Colors.grey),)
                               ],
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text("Lorem ipsum dolor purus "
                                 "in efficitur aliquam, enim enim porttitor lacus, "
                                 "ut sollicitudin nibh neque in metus. adipiscing elit."
                                 " Aliqam at turpis orci. Mauris nisl, in mollis acu  t"
                                 "incidunt. neque nec turpis aliquet, ut ornare velit molestie. Suspendisse sagittis, amet consectetur maximus,"
                                 " diam libero vestibulum elit, non dictum ante erat vitae metus.",style: TextStyle(color: Colors.white),)
                           ],
                         ),
                       ),
                     );
                   },),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
