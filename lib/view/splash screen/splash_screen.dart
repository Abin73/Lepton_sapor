import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';

import '../homepage/second_home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    nextpage();
    return Scaffold(

      body: SafeArea(

          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
          Center(
            child: Container(
              height: 200.h,
              width: 200.w,
              decoration: const BoxDecoration(
          
                  image: DecorationImage(
                      image: AssetImage('assets/images/leptonlogo.png'))),
            ),
          ),
          GoogleMonstserratWidgets(text: 
            "Lepton Sapor",
            fontsize: 15,
           
          )
                ],
              )),
    );
  }
}

nextpage() async {
     const HalfHomePage();
}
