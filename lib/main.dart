import 'package:flutter/material.dart';
import 'package:mpm/Home.dart';
import 'package:mpm/NearMe.dart';
import 'package:mpm/Profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;
  List Page;

  @override
  void initState(){
    super.initState();
    Page =[
      HomeStf(),
      NearMeStf()
    ];
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        backgroundColor: Color(0xff181818),
        centerTitle: true,
        title: Text("شهرتو",
            style: TextStyle(
                color: Color(0xffe8e8e8),
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Color(0xffe8e8e8),
            iconSize: 33,
          )
        ],
        leading:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfileStf(
                      )
                  ),
                );
              },
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Text("E",style: TextStyle(
                  fontSize: 22
                ),),
              ),
            ),
          ],
        ),

      ),
      body: Page[currentPage],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35)
        ),
        child: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (i) {
            setState(() {
              currentPage = i;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, size: 30),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined, size: 30),
                title: Text("NearMe"))
          ],
          selectedIconTheme: IconThemeData(color: Color(0xff00c870)),
          unselectedIconTheme: IconThemeData(color: Color(0xffffffff)),
          backgroundColor: Color(0xff31323b),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProfileStf(
                )
            ),
          );
        },
        backgroundColor: Color(0xff00c870),
        child: Icon(Icons.add, size: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}
