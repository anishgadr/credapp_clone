import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gPrimaryColor,
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: gPrimaryColor,
          leadingWidth: 100,
          leading: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Image(image: AssetImage("images/picture.png"))),
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      boxShadow: [gBoxShadow],
                      borderRadius: BorderRadius.circular(50)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'profile',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(1),
                        child: Image(
                          image: AssetImage("images/story.png"),
                          fit: BoxFit.cover,
                        ),
                        decoration: storyContainer,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'stories',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                            color: iconsColors,
                          ),
                        ),
                        decoration: nMboxInvert,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'notifications',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        child: IconButton(
                          icon: Icon(
                            Icons.category_sharp,
                            color: iconsColors,
                          ),
                        ),
                        decoration: nMboxInvert,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'control',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.vertical,
          child: Container(
            width: double.infinity,
            color: bodyColors,
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'hello, ANISH',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'here are todays\nrecommended actions for you',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Color(0xFFffefce),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 16.0,
                            spreadRadius: 6)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'claim your cashback now!',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'make your first payment now\nand win assurd cashback'),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        shape: StadiumBorder(),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('Pay now'),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Color(0xFFe2e8f3),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 16.0,
                            spreadRadius: 6)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'clear your upcoming bill to earn\ncoins',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Container(
                                padding: EdgeInsets.all(5),
                                child: Image(
                                    image: AssetImage("images/hdfc.png"))),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [gBoxShadow],
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'HDFC Bank',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text('XXXX 1234'),
                            ],
                          ),
                          SizedBox(
                            width: 80,
                          ),
                          Text('₹38,844'),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40, left: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'DUE IN 10 DAYS',
                              style: TextStyle(
                                  color: Colors.red[800],
                                  fontSize: 12,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w700),
                            ),
                            FlatButton(
                              shape: StadiumBorder(),
                              textColor: Colors.white,
                              color: Colors.black,
                              child: Text('Pay now'),
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  width: double.infinity,
                  height: 290,
                  decoration: BoxDecoration(
                      color: Color(0xFFffccbc),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: shadowColor,
                            offset: Offset(1.0, 1.0),
                            blurRadius: 16.0,
                            spreadRadius: 6)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'claim your cashback now!',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                          'make your first payment now\nand win assurd cashback'),
                      SizedBox(
                        height: 20,
                      ),
                      FlatButton(
                        shape: StadiumBorder(),
                        textColor: Colors.white,
                        color: Colors.black,
                        child: Text('Pay now'),
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: bottomColors,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Color(0xFF1b1f22),
              icon: Icon(Icons.home_filled),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'cards',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.money),
              label: 'money',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'club',
            ),
          ],
          // currentIndex: ,
          selectedItemColor: iconsColors,
          unselectedItemColor: unselct,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 11,
          //  onTap: ,
        ));
  }
}
