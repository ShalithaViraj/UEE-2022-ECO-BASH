import 'package:flutter/material.dart';
import 'package:uee234/screens/Organic_Methods/OrganicLandingPage.dart';

import 'package:uee234/screens/SoilAnimals/SoilAnimalLandingPage.dart';


import 'package:uee234/screens/SoilConservation/SoilConservationLandingPage.dart';

import 'package:uee234/screens/SoilTypes/SoilTypeLandingPage.dart';



class AdminDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.png"),
                  fit: BoxFit.cover,
                ),
                color: Color(0x1f000000),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                border: Border.all(color: Color(0x4d9e9e9e), width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // Divider(
                  //   color: Colors.white,
                  //   height: 16,
                  //   thickness: 7,
                  //   indent: 100,
                  //   endIndent: 100,
                  // ),
                ],
              ),
            ),


            Container(
              child: Column(
                children: [
                 
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                             child: MaterialButton(
                               onPressed: () {
                               Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => AdminOrganicLandingPage(),
                               ),
                                 );
                              },
                                child: const Text(
                                   "Organic Farming",
                                       style: TextStyle(
                                       fontSize: 26,
                                       fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                  ),
                                ),
                              ),
                              width: 240,
                              height: 110,
                              decoration: BoxDecoration(
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),

                                  bottomLeft: Radius.circular(25),

                                ),
                                border: Border.all(
                                    color: Color(0x4d9e9e9e), width: 1),
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 110,
                              decoration: BoxDecoration(
                                    image: DecorationImage(
                                    image: AssetImage("assets/Orgnicicon.png"),
                                    
                                  ),
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                              
                                  topRight: Radius.circular(25),

                                  bottomRight: Radius.circular(25),

                                ),
                                border: Border.all(
                                    color: Color(0x4d9e9e9e), width: 1),
                              ),
                            )
                          ]
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 40,left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                            children: [
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AdminSoilTypeLandingPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Soil Type & Information",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                width: 240,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),

                                    bottomLeft: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 110,
                                decoration: BoxDecoration(
                                   image: DecorationImage(
                                    image: AssetImage("assets/soils.png"),
                                    
                                  ),
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),

                                    bottomRight: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              )
                            ]
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 40,left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                            children: [
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AdminSoilConservationLandingPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Soil Conservation",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                width: 240,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),

                                    bottomLeft: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 110,
                                decoration: BoxDecoration(
                                   image: DecorationImage(
                                    image: AssetImage("assets/cons.png"),
                                    
                                  ),
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),

                                    bottomRight: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              )
                            ]
                        )
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 40,left: 0,bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                            children: [
                              Container(
                                child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AdminSoilAnimalLandingPage(),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Soil Animal, Bacteria & Fungles",
                                    style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                width: 240,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25),

                                    bottomLeft: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 110,
                                decoration: BoxDecoration(
                                   image: DecorationImage(
                                    image: AssetImage("assets/Virus.png"),
                                    
                                  ),
                                  color: Color(0xff003f36),
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),

                                    bottomRight: Radius.circular(25),

                                  ),
                                  border: Border.all(
                                      color: Color(0x4d9e9e9e), width: 1),
                                ),
                              )
                            ]
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



