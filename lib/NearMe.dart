import 'main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class NearMeStf extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NearMeState();
  }
}

class NearMeState extends State<NearMeStf> {
  LatLng centerPoint = new LatLng(35.689658, 51.388786);
  List<Marker> pins = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    savepoints(new LatLng(35.699834, 51.337701),'ازادی');
    savepoints(new LatLng(35.696810, 51.378415),'میدان جمهوری');

  }
  savepoints(LatLng point,name){
    pins.add(new Marker(
        width: 45.0,
        height: 45.5,
        point: point,
        builder: (context) => Container(
          child: IconButton(
            icon: Icon(
              Icons.pin_drop,
              color: Colors.red,
            ),
            onPressed: (){},
          ),
        )));
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff181818),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.gps_fixed,
          color: Color(0xff0BFC6B),
        ),
        backgroundColor: Color(0xff31323B),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.78,
          width: MediaQuery.of(context).size.width * 0.95,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(33)),
              color: Colors.grey),
          child: Stack(
            children: <Widget>[
              new FlutterMap(
                options: new MapOptions(
                  minZoom: 10,
                  zoom: 12,
                  maxZoom: 18,
                  center: centerPoint,),
                layers: [
                  new TileLayerOptions(
                      urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                      subdomains: ['a', 'b', 'c']),
                  new MarkerLayerOptions(markers: pins)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}