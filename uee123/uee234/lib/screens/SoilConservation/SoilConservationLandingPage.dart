import "package:flutter/material.dart";
import 'package:uee234/screens/SoilAnimals/SoilView.dart';
import 'package:uee234/screens/SoilConservation/DisplayFeedbacks.dart';
import 'package:uee234/screens/SoilConservation/ErosionViewAdmin.dart';
import 'package:uee234/screens/SoilConservation/SoilConClientView.dart';
import 'package:uee234/screens/SoilConservation/SoilConView.dart';



class AdminSoilConservationLandingPage extends StatelessWidget{
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
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: const Text(
                    "Soil Conservation",
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

           Column(
               children: [
                 MaterialButton(
                  onPressed: () {
                                 Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                   builder: (context) => FetchSoilConData(),
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
                            
                           child:  Text(
                            "Soil Conservation",
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
                          image: AssetImage("assets/soilcon.png"),
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
                                   builder: (context) => FetchErosionData(),
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
                            "Soil Erosion",
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
                          image: AssetImage("assets/erosion.jpg"),
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
                                     builder: (context) => FetchFeedbackData(),
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
                            "Feedbacks",
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
                          image: AssetImage("assets/share.png"),
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
             ),
     

        ]
      )
    );
  }
}