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
                        padding: EdgeInsets.all(4),
                        child: Image(image: AssetImage("images/picture.png")),
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
        body: Container(
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
              )
            ],
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
