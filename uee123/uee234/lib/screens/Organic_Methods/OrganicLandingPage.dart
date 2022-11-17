import "package:flutter/material.dart";
import 'package:uee234/screens/Organic_Methods/ChemicalCAdminView.dart';
import 'package:uee234/screens/Organic_Methods/FertlizerAdminView.dart';
import 'package:uee234/screens/Organic_Methods/OrganicView.dart';


class AdminOrganicLandingPage extends StatelessWidget{
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
                    "Organic Fertlizers",
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
                                     builder: (context) => FertlizerAdminData(),
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
                          border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                         
                            child: Text(
                              "Organic_Farming Methods",
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
                           image: AssetImage("assets/OrgMethod.png"),
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
                                   builder: (context) => FetchorganicData(),
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
                                     builder: (context) => FertlizerAdminData(),
                                   ),
                                     );
                                  },
                          
                          child: Text(
                            "Organic Furtilizers",
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
                           image: AssetImage("assets/OrgFert.png"),
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
                            builder: (context) => ChemicalAdminData(),
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
                                     builder: (context) => ChemicalAdminData(),
                                   ),
                                     );
                                  },
                          
                             
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