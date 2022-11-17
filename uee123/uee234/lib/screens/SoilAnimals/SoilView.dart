import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:uee234/screens/SoilAnimals/InsertSoilAnimal.dart';
import 'package:uee234/screens/SoilAnimals/UpdateSoilAnimals.dart';
import 'package:uee234/screens/SoilAnimals/editsoilanimal.dart';

 
class FetchsoilData extends StatefulWidget {
  const FetchsoilData({Key? key}) : super(key: key);
 
  @override
  State<FetchsoilData> createState() => _FetchsoilDataState();
}
 
class _FetchsoilDataState extends State<FetchsoilData> {
  
  Query dbRef = FirebaseDatabase.instance.ref().child('SoilAnimals');
  DatabaseReference reference = FirebaseDatabase.instance.ref().child('SoilAnimals');
  
  Widget listItem({required Map SoilAnimals}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(24),
      height: 115,
      
      decoration: BoxDecoration(
                          color: Color(0xff306f60),
                          borderRadius: BorderRadius.circular(20),
                             border: Border.all(color: Color(0xff6ED1BA), width: 2),
                        ),
      child: Row(
        children:[ 
          Container(
            width: 200,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Text(
                SoilAnimals['animalid'],
                style: 
                TextStyle(
                 fontSize: 30,
                 fontWeight: FontWeight.bold,
                 color: Colors.white
                  ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                SoilAnimals['animalname'],
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
                   margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (_) => editSoilAnimalRecord(SoilAnimalKey: SoilAnimals['key'])));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_outlined,
                             color: Colors.white, 
                             size: 37
                          ),
                        ],
                          
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    GestureDetector(
                      onTap: () {
                        reference.child(SoilAnimals['key']).remove();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline, 
                            color: Color(0xffDFBAB1), 
                            size:40,
                          ),
                        ],
                      ),
                    
                    ),
                  ],
                ),
              
           
          ),
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
                  border: Border.all(color: Color(0xff6ED1BA), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: const Text(
                        "Soil Animal View",
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
              
              
              Container(
              margin: EdgeInsets.all(20),
              alignment: Alignment.topRight,
              
              child: IconButton(
                onPressed:() {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => InsertSoilAnimal()));
                },
                icon: Icon(Icons.add,size: 50, color: Color(0xff003F36),)
                )
            ),
              
              Expanded(
                
                
                child: FirebaseAnimatedList(
                 query: dbRef,
                 itemBuilder: (BuildContext context, DataSnapshot snapshot, Animation<double> animation, int index) {
                 
                   Map SoilAnimals = snapshot.value as Map;
                  SoilAnimals['key'] = snapshot.key;
                 
                return listItem(SoilAnimals: SoilAnimals);
                 
              },
            ),
                  ),
            ],
          ),
      
    );
  }
}
 