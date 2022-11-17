import "package:flutter/material.dart";
import 'package:uee234/screens/SoilAnimals/BacteriaClientView.dart';
import 'package:uee234/screens/SoilAnimals/FungleClientView.dart';
import 'package:uee234/screens/SoilAnimals/SoilAnimalClientsView.dart';

class ClientSoilAnimalLandingPage extends StatelessWidget{
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
                border: Border.all(color: Color(0xff6ED1BA), width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: const Text(
                      "Soil Animals",
                      style: TextStyle(
                        fontSize: 50,
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
                                     builder: (context) => FetchsoilAnimalClientData(),
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
                                "Soil Animals",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),
                              ),
                           
                          ),
                        ),
                   
                            
                      Container(
                        width: 360,
                        height: 140,
                        decoration: BoxDecoration(
                           image: DecorationImage(
                                    image: AssetImage("assets/animal1.jpeg"),
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
                                     builder: (context) => BacteriaData(),
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
                              "Bacteria",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            ),
                          ),
                       
                     
                           
                      Container(
                        width: 360,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                                    image: AssetImage("assets/bacteria.jpeg"),
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
                                     builder: (context) => FungleClientData(),
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
                              "Fungal Infaction",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                          
                          ),
                        ),
                     
                             
                      Container(
                        width: 360,
                        height: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                                    image: AssetImage("assets/fungle.jpg"),
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
               ),
         )
    );
  }
}