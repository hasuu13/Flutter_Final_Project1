import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_final_project/pages/onboarding_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override

  void initState(){
    super.initState();
    timer = Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (builder) => OnboardingScreen(),),);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 29, 123, 32),
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("LuxeyLin",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight(600),
              
            ),)),
            SizedBox(
              height: 200,
            ),
            Text("Version 1.56.2",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight(200),
              color: Colors.white,
            ),),
          ],
        ),
      ),
    );
  }
}