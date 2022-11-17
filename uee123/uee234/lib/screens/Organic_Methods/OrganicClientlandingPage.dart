import "package:flutter/material.dart";
import 'package:uee234/screens/Organic_Methods/ChemicalClientView.dart';
import 'package:uee234/screens/Organic_Methods/FertilizerClientView.dart';
import 'package:uee234/screens/Organic_Methods/OrganicViewClients.dart';

class ClientOrganicLandingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
         body: SingleChildScrollView(
           child: Column(
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
                border: Border.all(color: Color(0xff6ED1BA), width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Organic Farming",
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
                                   builder: (context) => OrganicClientView(),
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
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: const Text(
                            "Organic Farming Methods",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          )
                          
                        ),
                      ),
                            
                      Container(
                        width: 460,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                           image: AssetImage("assets/OrgMethod.png"),
                            fit: BoxFit.cover,
                            ),
                          color: Color(0xff003f36),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
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
                                   builder: (context) => FertlizerClientView(),
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
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                
                           
                          child: Text(
                            "Organic Fertilizers",
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
                           image: AssetImage("assets/OrgFert.png"),
                            fit: BoxFit.cover,
                            ),
                          color: Color(0xff003f36),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
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
                                   builder: (context) => ChemicalClientView(),
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
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                  
                           
                          child: Text(
                            "Non-Harmful Chemicals",
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
                           image: AssetImage("assets/Chemical1.jpg"),
                            fit: BoxFit.cover,
                            ),
                          color: Color(0xff003f36),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          border: Border.all(color: Color(0xff6ED1BA), width: 1),
                        ),
                      )
                    ]
                    ),
                  )
                   
         
               ]
             )
         
                 ]
               ),
         )
    );
  }
}