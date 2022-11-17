import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_database/firebase_database.dart';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'package:uee234/screens/utils.dart';

import '../../components/round_button.dart';


class InsertChemical extends StatefulWidget {
  const InsertChemical({Key? key}) : super(key: key);
  

  @override
  State<InsertChemical> createState() => _InsertChemicalState();
}

class _InsertChemicalState extends State<InsertChemical> {
    // ignore: deprecated_member_use
    final _formKey = GlobalKey<FormState>();
    final databaseRef = FirebaseDatabase.instance.ref().child('Chemicals');
    firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
    File? _image;
       //final postController =TextEditingController();
    bool loading = false ;
   final picker = ImagePicker();
   FirebaseAuth _auth = FirebaseAuth.instance;
   final ChemicaldescriptionController = TextEditingController();
   final ChemicalidController = TextEditingController();
   final ChemicalnameController = TextEditingController();



Future getImageG() async {
  final pickedFile = await picker.getImage(source: ImageSource.gallery, imageQuality: 50, maxWidth: 400);

  setState(() {
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected !');
    }
  });
}

Future getImageC() async {
  final pickedFile = await picker.getImage(source: ImageSource.camera, imageQuality: 50, maxWidth: 400);

  setState(() {
    if (pickedFile != null) {
      _image = File(pickedFile.path);
    } else {
      print('No image selected.');
    }
  });
}

 void dialog (context){
   showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          content: Container(
            height:120,
            child: Column(
              children:[
                InkWell(
                  onTap: (){
                    getImageC();
                    Navigator.pop(context);
                 

                  },
                  child:ListTile(
                    leading: Icon(Icons.camera),
                    title: Text('Camera'),
                )
                
             
                ),
                InkWell(
                  onTap: (){
                    getImageG();
                    Navigator.pop(context);
                  },
              
                  child:ListTile(
                    title: Text('gallery'),
                    leading: Icon(Icons.photo_library),
                  ),
                )
              ]
            ),
          ),
        
        );
      }
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: loading,

    child: Scaffold(
    
      body: SingleChildScrollView(
        child :Column(
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
                        "Add Non-Harmful Chemicals",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Divider(
                    //   color: Colors.white,
                    //   height: 16,
                    //   thickness: 5,
                    //   indent: 100,
                    //   endIndent: 100,
                    // ),
                  ],
                ),
              ),
            
            
            
            Padding(
            padding : const EdgeInsets.symmetric(vertical:10,horizontal: 20),
          //  child :Form(
          //        key: _formKey,
          child:Column(children: [
            InkWell(
              onTap: (){
              dialog(context);
              },
              child:Center (
                child: _image != null ? ClipRRect(
                  child: Image.file(
                    _image!.absolute,
                    width: 250,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                 
                ):Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15)),
                      width: 300,
                      height: 300,
                      child: Icon(Icons.camera_alt, color: Colors.grey[800],),
                  ),
              ),
            ),
        
            SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                 controller: ChemicalnameController,
                  maxLines: 1,
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
                  hintText: 'Insert Fertlizer Name',
                 
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
        
             SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                 controller: ChemicalidController,
                  maxLines: 1,
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
                  hintText: 'Insert Fertlizer ID',
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
        
        
               SizedBox(
                 height: 30,
                ),
            
               TextFormField(
                   keyboardType: TextInputType.text,
                   controller: ChemicaldescriptionController,
                    maxLines: 4,
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
              SizedBox(
                height: 30,
              ),
               RoundButton(title: 'Submit', loading: loading,
                      
                      onTap: () async{
              
                  setState(() {
                    loading = true;
                  });
                  
                    int date = DateTime.now().millisecondsSinceEpoch;
                    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance.ref('/organic_images/'+DateTime.now().millisecondsSinceEpoch.toString());
                    firebase_storage.UploadTask uploadTask = ref.putFile(_image!.absolute);
                   
                    await Future.value(uploadTask).then((value)async{
                     
                      var downloadURL = await (await uploadTask).ref.getDownloadURL();
              
                   
                    final User? user = _auth.currentUser;
                  String id  = DateTime.now().millisecondsSinceEpoch.toString() ;
                    databaseRef.child(id)
                      // .child(date.toString()).set({
                        .set({
                           'chemid':ChemicalidController.text.toString(),
                          'chemName':ChemicalnameController.text.toString(),
                           'chemdesd':ChemicaldescriptionController.text.toString(),
                           'chemimage':downloadURL.toString(),
                            'uid':user!.uid.toString(),
                           'uEmail':user.email.toString(),
                           'id' : DateTime.now().millisecondsSinceEpoch.toString()
                        });
                    // 'pid':date.toString(),
                    // 'pimage':downloadUrl.toString(),
                    // 'ptime':date.toString(),
                    // 'desd':titleController.text.toString(),
                   
        
        
                    }).then((value) {
                      
                      toastMessage ('Chemical Added Successfully');
                    
                      setState(() {
                        loading = false;
                      });
                      
                      
                      
          
                    }).onError((error, stackTrace) {
                      toastMessage ('Chemical Added Failed');
                           setState(() {
                            loading = false ;
                           });
        
                           print(error);
                }).onError((error, stackTrace){
                       Utils().toastMessage(error.toString());
                }); 
                      }
              ),
          ],),
              // ),
              ),
          ]
        ),
    ),
    )
    );
  }
}

                    

  void toastMessage(String message) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.black,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
