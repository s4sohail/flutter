import 'dart:async';
import 'package:flutter/material.dart';
// import 'add.dart';
import 'Home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
    void initState(){
super.initState();
Timer(const Duration(seconds: 3), () {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) =>  HomeScreen()),
  );
});



  }
  Widget  build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(138, 157, 255, 0.72),
        body: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text(
                  "Manage Your \n Daily TO DO",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                Image(image: AssetImage("assets/images/Illustration.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                  children: [

                    Image(image: AssetImage("assets/images/Rectangle.png")),
                    Image(image: AssetImage("assets/images/Rectangle.png")),
                    Image(image: AssetImage("assets/images/Rectangle.png")),
                  ],
                ),
                Text(
                  "Without much worry just manage\n things as easy as piece of cake",
                  style: TextStyle(fontSize: 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
