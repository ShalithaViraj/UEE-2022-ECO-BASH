import "package:flutter/material.dart";
import 'package:uee234/screens/SoilTypes/PlantClientView.dart';
import 'package:uee234/screens/SoilTypes/SoilTypeClientView.dart';
import 'package:uee234/screens/SoilTypes/TreatmentClientView.dart';

class ClientSoilTypeLandingPage extends StatelessWidget{
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
                      fontSize: 44,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
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
                                   builder: (context) => SoilTypeClientView(),
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
                      width: 430,
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
                          bottomRight: Radius.circular(0),
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
                                   builder: (context) => PlantClientView(),
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
                                   builder: (context) => TreatmentClientView(),
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
                          "Treatment Methods for Contaminated Soil",
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