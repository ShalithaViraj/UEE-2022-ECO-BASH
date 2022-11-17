import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart'; 

class editOrganicRecord extends StatefulWidget {
  
  const editOrganicRecord({Key? key, required this.OrganicKey}) : super(key: key);
 
  final String OrganicKey;
 
  @override
  State<editOrganicRecord> createState() => _editOrganicRecordState();
}
 
class _editOrganicRecordState extends State<editOrganicRecord> {
 
 final descriptionController = TextEditingController();
   final organicidController = TextEditingController();
   final organicnameController = TextEditingController();
   bool loading = false ;
 
  

  late DatabaseReference dbRef;
 
  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Organic');
    getorganicData();
  }
 
  void getorganicData() async {
    DataSnapshot snapshot = await dbRef.child(widget.OrganicKey).get();
 
    Map organic = snapshot.value as Map;
 
    organicidController.text = organic['oid'];
    organicnameController.text = organic['oname'];
    descriptionController.text = organic['desd'];
 
  }
  
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        body:  SingleChildScrollView(
          child: Column(
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
                            "Organic Methods Update",
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
              
              Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                  
                    TextField(
                      controller: organicidController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                   ),
                      decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xff306f60),     
                       hintStyle: (
                            TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                      hintText: 'Insert Organic Method ID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                       disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: organicnameController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                   ),
                     decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xff306f60),     
                       hintStyle: (
                            TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                      hintText: 'Insert Organic Method Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                       disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: descriptionController,
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                   ),
                     decoration: InputDecoration(
                      filled: true,
                       fillColor: Color(0xff306f60),   
                         
                       hintStyle: (
                            TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )
                            ),

                      hintText: 'Insert Description',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                       disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                       borderSide: BorderSide(color: Color(0xff6ED1BA), width: 2),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MaterialButton(
                      onPressed: () {
           
                        Map<String, String> Organic = {
                          'oid': organicidController.text,
                          'oname': organicnameController.text,
                          'desd': descriptionController.text
                        };
           
                        dbRef.child(widget.OrganicKey).update(Organic)
                        .then((value) => {
                           Navigator.pop(context) 
                        });
           
                      },
                       
                      child: const Text('Update Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     color: Color(0xff003F36),
                      textColor: Colors.white,
                     
                      elevation: 5,
              
                     padding: EdgeInsets.symmetric(horizontal: 28, vertical: 25),
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(7),
                     side: BorderSide(color: Color(0xff1dab39), width: 2),
                 
            
              ),
                      
                      minWidth: 250,
                      height: 38,
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      
    );
  }
}