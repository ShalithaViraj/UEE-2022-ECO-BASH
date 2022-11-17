import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpdateSoilAnimal extends StatefulWidget {

  const UpdateSoilAnimal({Key? key, required this.studentKey}) : super(key: key);
   

  // final String uKey;
  
  // final String animalname;
  // final String animalid;
  // final String id;
  final String studentKey;
  

  @override
  State<UpdateSoilAnimal> createState() => _UpdateSoilAnimalState();
}

class _UpdateSoilAnimalState extends State<UpdateSoilAnimal> {
  final AnimalnameController = TextEditingController();
  final animalidController = TextEditingController();
  final AnimaldescriptionController = TextEditingController();
   FirebaseAuth _auth = FirebaseAuth.instance;
 
  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child("SoilAnimals");
   
    getanimalsviewData();
  }

  void getanimalsviewData() async {
    DataSnapshot snapshot = await dbRef.get();

    Map animal = snapshot.value as Map;

    AnimalnameController.text = animal['animalname'];
    animalidController.text = animal['animalid'];
    AnimaldescriptionController.text = animal['animaldesd'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Updating record'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: animalidController,
              decoration: InputDecoration(
                labelText: 'Organic ID',
              ),
            ),
            TextFormField(
              controller: AnimalnameController,
              decoration: InputDecoration(
                labelText: 'Organic Name',
              ),
            ),
            TextFormField(
              controller: AnimaldescriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async{

                   final User? user = _auth.currentUser;
                    String id  = DateTime.now().millisecondsSinceEpoch.toString() ;
                    dbRef.child(id);
                
                await dbRef.child(id).update({  
                  
                  'animalname': AnimalnameController.text.toString(),
                  'animalid': animalidController.text.toString(),
                  'animaldesd': AnimaldescriptionController.text.toString(),
                   'uid':user!.uid.toString(),
                    'uEmail':user.email.toString(),
                    'id' : id
                  
                }).then((value) => Navigator.pop(context));
                 
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
//  databaseRef.child(id)
                  
//                         .set({
//                            'animalid': animalidController.text.toString(),
//                           'animalname':AnimalnameController.text.toString(),
//                            'animaldesd':AnimaldescriptionController.text.toString(),
//                            'animalimage':downloadURL.toString(),
//                             'uid':user!.uid.toString(),
//                            'uEmail':user.email.toString(),
//                            'id' : id
//                         });