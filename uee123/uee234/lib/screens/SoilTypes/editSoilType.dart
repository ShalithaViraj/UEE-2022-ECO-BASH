import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart'; 

class editSoilTypeRecord extends StatefulWidget {
  
  const editSoilTypeRecord({Key? key, required this.SoilTypeKey}) : super(key: key);
 
  final String SoilTypeKey;
 
  @override
  State<editSoilTypeRecord> createState() => _editSoilTypeRecordState();
}
 
class _editSoilTypeRecordState extends State<editSoilTypeRecord> {
 
 final SoilTypeidController = TextEditingController();
   final SoilTypenameController = TextEditingController();
   final SoilTypedescriptionController = TextEditingController();
   bool loading = false ;
 
  

  late DatabaseReference dbRef;
 
  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('SoilType');
    getorganicData();
  }
 
  void getorganicData() async {
    DataSnapshot snapshot = await dbRef.child(widget.SoilTypeKey).get();
 
    Map soilType = snapshot.value as Map;
 
    SoilTypeidController.text = soilType['soiltypeid'];
    SoilTypenameController.text = soilType['soiltypename'];
    SoilTypedescriptionController.text = soilType['soiltypedesd'];
 
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
                    height: 260,
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
                            "Soil Types Update",
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
                      controller: SoilTypeidController,
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
                      hintText: 'Insert Soil Type ID',
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
                      controller: SoilTypenameController,
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
                      hintText: 'Insert Soil Type Name',
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
                      controller: SoilTypedescriptionController,
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
           
                        Map<String, String> SoilType = {
                          'soiltypeid': SoilTypeidController.text,
                          'soiltypename': SoilTypenameController.text,
                          'soiltypedesd': SoilTypedescriptionController.text
                        };
           
                        dbRef.child(widget.SoilTypeKey).update(SoilType)
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
                     borderRadius: BorderRadius.circular(15),
                     side: BorderSide(color: Color(0xff6ED1BA), width: 2),
                 
            
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