import 'package:flutter/material.dart';
import 'package:uee234/screens/signin.dart';
import 'package:uee234/screens/register.dart';
import 'package:uee234/components/round_button.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
          Container(
          margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 500, 
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
              border: Border.all(color: Color(0xff6ED1BA), width: 3),  
             ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Divider(
            
            color: Colors.white,
            height: 16,
            thickness: 7,
            indent: 100,
            endIndent: 100,
          ),
              Align(
                alignment: Alignment.center,
                child: const Text(
                  "EchoBash",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    
                  ),
                ),

                
              ),  

              const Divider(
            
            color: Colors.white,
            height: 16,
            thickness: 7,
            indent: 100,
            endIndent: 100,
          ),     
            ],

          ),
          ),

          SizedBox(
            height: 30,
          ),

         Container(
           alignment: Alignment.center,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
             ),
            MaterialButton(
               minWidth: 200,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              color: Color(0xff003F36),
              elevation: 3,
             padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                 side: BorderSide(color: Color(0xff6ED1BA), width: 2),
                 
            
              ),
              child: Text(
                "LOGIN",
                 style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
         ),

          Container(
           alignment: Alignment.center,
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
             ),
            MaterialButton(
              
               minWidth: 200,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
              color: Color(0xff003F36),
              elevation: 3,
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                 side: BorderSide(color: Color(0xff6ED1BA), width: 2),
                 
            
              ),
              child: Text(
                "REGISTER",
                 style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
         )


        
        ],

          )
    );
  }
}