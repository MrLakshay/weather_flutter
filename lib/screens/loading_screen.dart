import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/services/location.dart';
import 'package:http/http.dart' as http;
import 'locating_screen.dart';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getlocation() async{
    Location location=Location();
    location.getCurrentLocation();
  }

  void init(){
    super.initState();
    Navigator.push(context,MaterialPageRoute(builder: (context)=> LocationScreen()),);
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SpinKitRing(
        color: Colors.white,
        size: 50.0,
      ),
    );
  }
}