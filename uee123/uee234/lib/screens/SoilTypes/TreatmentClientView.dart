import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:uee234/screens/SoilAnimals/AnimalViewMore.dart';
import 'package:uee234/screens/SoilTypes/TreatViewMore.dart';


 
class TreatmentClientView  extends StatefulWidget {
  const TreatmentClientView ({Key? key}) : super(key: key);
 
  @override
  State<TreatmentClientView> createState() => _TreatmentClientViewState();
}
 
class _TreatmentClientViewState extends State<TreatmentClientView > {
  
  Query dbRef = FirebaseDatabase.instance.ref().child('Treat');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('Treat');
  
  Widget listItem({required Map Treat}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(24),
      height: 206,
      
      decoration: BoxDecoration(
          color: Color(0xff306f60),
        borderRadius: BorderRadius.circular(20),
        ),
     
     
      child: Column(

        children:[ 
          Row(
          children:[ 
            Container(
              width: 200,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                const SizedBox(
                  height: 5,
                ),
                Text(
                  Treat['treatname'],
                  style: TextStyle(
                     fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                    ),
                ),
      
              ]
              ),
            ),
               
             
                Container(
                   alignment: Alignment.centerRight,
                                width: 100,
                                height: 100,
      
                                decoration: BoxDecoration(
                                 
                                  color: Colors.white,
                                  border: Border.all(color: Colors.white, width: 2),
                                  // borderRadius: BorderRadius.circular(60),
                                ),
                   
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/placeholder.jpg',
                                  placeholderScale: 1,
      
                                  image: Treat['treatimage'],
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100,
                                  fadeOutCurve: Curves.easeIn,
                                  
                                  fadeInCurve: Curves.easeIn,
                                  
      
                                  ),
                         
      
                
             
            ),
          ]
        ),

        Container(
            margin: const EdgeInsets.only(top: 10),
          child: MaterialButton(
            shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(7),
                     side: BorderSide(color: Colors.white, width: 2),
                 
            
              ),
              
            child: const Text('View Details',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.bold
            ),
            ),
            onPressed: 
            () {
             Navigator.push(context, MaterialPageRoute(builder: (_) => ViewMoreTreat(TreatKey: Treat['key'])));
            },
            ),
        )
        ]
      ),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
          Column(
            children:[ 
              
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
                        "    Treatment Methods for\n       Contaminated Soil", 
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  
                  ],
                ),
              ),
              
              
            
              
              Expanded(
                
                
                child: FirebaseAnimatedList(
                 query: dbRef,
                 defaultChild: Text('Loading... Please wait..!!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                 ),
                 itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
                 
                   Map Treat = snapshot.value as Map;
                  Treat['key'] = snapshot.key;
                 
                return listItem(Treat: Treat);
                 
              },
            ),
                  ),
            ],
          ),
      
    );
  }
}
 