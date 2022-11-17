import "package:flutter/material.dart";
import 'package:uee234/screens/SoilAnimals/SoilView.dart';

import 'package:uee234/screens/SoilTypes/SoilTypeView.dart';
import 'package:uee234/screens/SoilTypes/ViewPlants.dart';
import 'package:uee234/screens/SoilTypes/treatviewadmin.dart';


class AdminSoilTypeLandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
         body: Column(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 180,
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
                    "Soil Types",
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

           Column(
             children: [
               MaterialButton(
                onPressed: () {
                               Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => FetchSoilTypeData(),
                               ),
                                 );
                              },
                 child: Column(
                  children: [
                   Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 460,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                      child: Align(
                        alignment: Alignment.center,
               
                                
                        child: Text(
                          "Type Of Soil",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                         
                      ),
                    ),
                          
                    Container(
                      width: 460,
                      height: 140,
                      decoration: BoxDecoration(
                       image: DecorationImage(
                                    image: AssetImage("assets/soiltype.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                    )
                 ]
                            ),
               ),

              MaterialButton(
                onPressed: () {
                               Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => PlantAdminData(),
                               ),
                                 );
                              },
                child: Column(
                  children: [
                   Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 460,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                      child: Align(
                        alignment: Alignment.center,
              
                       
                        child: Text(
                          "Plant Grouth In different Soil Types",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                         
                      ),
                    ),
                         
                    Container(
                      width: 460,
                      height: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                  image: AssetImage("assets/plants.jpg"),
                  fit: BoxFit.cover,
                ),
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                    )  
                 ]
                ),
              ),
                
                MaterialButton(
                  onPressed: () {
                               Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => TreatAdminData(),
                               ),
                                 );
                              },
                  child: Column(
                  children: [
                   Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 460,
                      height: 50,
                      decoration: BoxDecoration(
                         
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                         child: MaterialButton(
                              onPressed: () {
                                 Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => TreatAdminData(),
                                 ),
                                   );
                                },
                        child: Text(
                          "Treatment Methods for Contaminated Soil",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                         ),
                      ),
                    ),
                           
                    Container(
                      width: 460,
                      height: 140,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                                    image: AssetImage("assets/treat.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                        color: Color(0xff003f36),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Color(0xff6ED1BA), width: 2),
                      ),
                    )
                  ]
                  ),
                )
                 

             ]
           )

        ]
      )
    );
  }
}