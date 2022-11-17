import 'package:flutter/material.dart';
import 'package:uee234/screens/MainPage/LandingPage.dart';
import 'package:uee234/screens/option_screen.dart';


class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.infinity,
            height: 570,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/1.png"),
                fit: BoxFit.cover,
              ),
              color: Color(0x1f000000),
              
              shape: BoxShape.rectangle,
              borderRadius: const BorderRadius.only(
                
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),

                
              ),
              border: Border.all(color: Color(0xff6ED1BA), width: 3),  
             ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/2.png"
                  ),
                  ),

                  SizedBox(
                    height: 30,
                  ),
               
               const Divider(
            color: Colors.white,
            height: 16,
            thickness: 7,
            indent: 100,
            endIndent: 100,
          ), 
              const Align(
                alignment: Alignment.center,
                child: Text(
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
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "     The best Earth\n        has to offer\n is  waiting  for  you..!!",
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

          SizedBox(
            height: 27,
          ),

         Container(
           alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
             ),
          
          
            MaterialButton(
              minWidth: 200,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LandingPage(),
                  ),
                );
              },
              color: Color(0xff003F36),
              elevation: 5,
              
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
                 shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                 side: BorderSide(color: Color(0xff6ED1BA), width: 2),
                 
            
              ),
              
              

              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 23,
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