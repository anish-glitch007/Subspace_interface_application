import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExplorePage(),
    );
  }
}

class ExplorePage extends StatelessWidget {
  var _controller = TextEditingController();
  double _progressValue=0.8;
  bool _loading=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore', style: TextStyle()),
        backgroundColor: Color(0xFF1B1B1B),
      ),
      backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 0),
              alignment: Alignment.center,
              width: double.infinity,
              child: TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF000023),
                    side: BorderSide(color: Color(0xFF5960A7), width: 3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/images/coin.png'), //coin icon
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Play and earn coins',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(
                            left: 59, top: 8, bottom: 8, right: 0),
                        child: Image.asset(
                          'assets/images/fast-forward.png',
                          scale: 5,
                        ) // insert icon here
                        ),
                  ],
                ),
              ),
            ),// Play and Earn Coins Button
            Container(
                margin: EdgeInsets.all(15),
                child: Image.asset('assets/images/help.png')),// Help Video

            Stack(
              // alignment: Alignment.topLeft,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15,right: 15,top: 15, bottom: 0),
                  padding: EdgeInsets.all(8),
                  color: Color(0xFF2A2A2A),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 70,
                        padding: EdgeInsets.all(10),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: <Widget>[

                            Image.asset('assets/images/netflix.png'),
                            Image.asset('assets/images/friend.png',scale: 6,
                            ),

                          ],


                        ),
                      ),
                      Container(
                        padding: EdgeInsetsDirectional.only(start: 2, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Netflix Premium',
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'bought by Ishika Verma',
                              style: TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '1/5 friends sharing',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(0xFFA3C3F4)),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('₹163 / user / Month',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xFFA3C3F4))),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  width: 100,
                                  child: ButtonTheme(
                                      // minWidth: 100,
                                      child: ElevatedButton(
                                          onPressed: null,
                                          style: ButtonStyle(
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              )),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Color(0xFF3F51B5))),
                                          child: Text(
                                            'Join',
                                            style: TextStyle(color: Colors.white),
                                          )))),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),// Netflix Premium
                Container(
                  margin: EdgeInsets.only(top: 15,left: 15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),
                    ),
                    color: Color(0xFF00897B),
                  ),
                  child: Text('6+ groups',
                    style: TextStyle(fontSize: 12,color: Colors.white),),
                ),// Number of people in group
              ]
            ),

             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
               ),
              margin: EdgeInsets.only(top: 0, bottom: 15,right: 15,left: 15),

              child: _loading
               ? Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 LinearProgressIndicator(

                   backgroundColor: Color(0xFF979797),
                   valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF3F51B5)),
                   value: _progressValue,
                 ),
               ],
             )
            : Text("Press button for downloading", style: TextStyle(fontSize: 25)),

    ),// Linear progress indicator
            Stack(
              children: <Widget>[
                Container(
                margin: EdgeInsets.only(right: 15, left: 15, top: 15),
                padding: EdgeInsets.all(8),
                color: Color(0xFF2A2A2A),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 70,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/amazon-prime.png',
                        // scale: 7,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(start: 2, bottom: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Amazon Prime',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Watch Unlimited Movies,TV Shows &\nGet Free shipping Benefits with\nAmazon Prime',
                            style:
                                TextStyle(fontSize: 8, color: Colors.grey[300]),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('₹700 ₹650 /Month',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Color(0xFFA3C3F4))),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                                width: 100,
                                child: ButtonTheme(
                                    //minWidth: 100,
                                    child: ElevatedButton(
                                        onPressed: null,
                                        style: ButtonStyle(
                                            shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            )),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Color(0xFF3F51B5))),
                                        child: Text(
                                          'Apply',
                                          style: TextStyle(color: Colors.white),
                                        )))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),// Amazon Premium
                Container(
                  margin: EdgeInsets.only(left: 15,top: 15),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),
                    ),
                    color: Color(0xFF00897B),
                  ),
                  child: Text('40% off',
                    style: TextStyle(fontSize: 12,color: Colors.white),),
                ),// Offers
              ]
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(10),
              color: Color(0xFF2A2A2A),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'What do you want us to list next?',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Suggest us a subscription\n',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                  TextField(
                    controller: _controller,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Color(0xFF343434))),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(color: Color(0xFF343434))),
                      fillColor: Color(0xFF343434),
                      filled: true,
                      border: InputBorder.none,
                      hintText: 'Your Suggestion',
                      hintStyle:
                          TextStyle(fontSize: 15.0, color: Color(0xFF4C4C4C)),
                      focusColor: Color(0xFF494949),
                      suffixIcon: IconButton(
                        onPressed: () => _controller.clear(),
                        icon: new Icon(Icons.send),
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )// Suggest Subscription
          ],
        ),
      ),
    );
  }
}
