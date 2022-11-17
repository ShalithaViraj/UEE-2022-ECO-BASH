import 'package:flutter/material.dart';
import 'package:uee234/screens/Organic_Methods/OrganicClientlandingPage.dart';
import 'package:uee234/screens/Organic_Methods/OrganicLandingPage.dart';
import 'package:uee234/screens/SoilAnimals/SoilAnimalClientLanding.dart';
import 'package:uee234/screens/SoilAnimals/SoilAnimalLandingPage.dart';
import 'package:uee234/screens/SoilConservation/SoilConClientLanding.dart';
import 'package:uee234/screens/SoilConservation/SoilConservationLandingPage.dart';
import 'package:uee234/screens/SoilTypes/SoilTypeClientLanding.dart';



class Dashboard extends StatelessWidget {
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
              height: 250,
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
                border: Border.all(color: Color(0xff6ED1BA), width: 2),
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
                  Divider(
                    color: Colors.white,
                    height: 16,
                    thickness: 7,
                    indent: 100,
                    endIndent: 100,
                  ),
                ],
              ),
            ),
      
      
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Org01.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0x1f000000),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                   topRight: Radius.circular(25),
                                ),
                                border: Border.all(
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                            ),
      
                            Container(
                              width: 170,
                              height: 50,
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(25),
                                   bottomRight: Radius.circular(25),
                                ),
                                border: Border.all(    
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                       builder: (context) => ClientOrganicLandingPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Organic Farming",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),         
                          ],
                        )
                     
                      ],
          
                    ),
                  ),
      
      
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Stype01.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0x1f000000),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                   topRight: Radius.circular(25),
                                ),
                                border: Border.all(
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                            ),
      
                            Container(
                              width: 170,
                              height: 50,
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(25),
                                   bottomRight: Radius.circular(25),
                                ),
                                border: Border.all(    
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                       builder: (context) => ClientSoilTypeLandingPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Soil Type",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),         
                          ],
                        )
                     
                      ],
          
                    ),
                  ),
                ],
      
              ),
      
            ),
      
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Scon01.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0x1f000000),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                   topRight: Radius.circular(25),
                                ),
                                border: Border.all(
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                            ),
      
                            Container(
                              width: 170,
                              height: 50,
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(25),
                                   bottomRight: Radius.circular(25),
                                ),
                                border: Border.all(    
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                       builder: (context) => ClientSoilConservationLandingPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Soil Conservation",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),         
                          ],
                        )               
                      ],
                    ),
                  ),
      
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 170,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Sanimal01.png"),
                                  fit: BoxFit.cover,
                                ),
                                color: Color(0x1f000000),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                   topRight: Radius.circular(25),
                                ),
                                border: Border.all(
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                            ),
      
                            Container(
                              width: 170,
                              height: 50,
                              margin: EdgeInsets.only(top: 0),
                              decoration: BoxDecoration(
                                color: Color(0xff003f36),
                                shape: BoxShape.rectangle,
                                 borderRadius: BorderRadius.only(
                                   bottomLeft: Radius.circular(25),
                                   bottomRight: Radius.circular(25),
                                ),
                                border: Border.all(    
                                    color: Color(0xff6ED1BA), width: 2),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                       builder: (context) => ClientSoilAnimalLandingPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Soil Animals",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),         
                          ],
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

  

