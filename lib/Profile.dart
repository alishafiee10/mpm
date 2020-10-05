import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileStf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }
}

class ProfileState extends State<ProfileStf> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff181818),
      appBar: AppBar(
        elevation:0 ,
        backgroundColor: Color(0xff252735),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)
            ),
            child: Container(
              height: 300,
              color: Color(0xff252735),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(

                                  // colors: [
                                  //   Color(0xff7820ad),
                                  //   Color(0xff0bfc6b)
                                  // ]
                              )
                          ),
                          child: new Container(
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xff7c94b6),
                              image: new DecorationImage(
                                image: new NetworkImage('http://i.imgur.com/QSev0hg.jpg'),
                                fit: BoxFit.cover,
                              ),

                              border: new Border.all(
                                color: Colors.lightBlue,
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Center(child: Text("عرفان نوری",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)),
                          subtitle: Center(child: Text("دانش آموخته هنر های تجسمی و معماری دانشگاه تهران",style: TextStyle(fontSize: 12,color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("5",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Text("مطالب",style : TextStyle(color: Colors.grey,fontSize: 14),)
                                ],
                              ),
                              Column(
                                children: [
                                  Text("876",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Text("دنبال کنندگان",style : TextStyle(color: Colors.grey,fontSize: 14),)
                                ],
                              ),
                              Column(
                                children: [
                                  Text("58",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  Text("دنبال شوندگان",style : TextStyle(color: Colors.grey,fontSize: 14),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              // colors: [
                              //   Color(0xff7130a8),
                              //   Color(0xff13ea70)
                              // ]
                            ),
                                borderRadius: BorderRadius.circular(20),
                          ),
                          child: RaisedButton(
                            color: Colors.transparent,
                            elevation: 0,
                            shape:RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                            },
                            child: Text("دنبال کردن",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
          Column(

          )
        ],
      ),
    )
    ;
  }

}
