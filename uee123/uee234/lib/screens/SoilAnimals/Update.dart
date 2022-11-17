import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_database/firebase_database.dart';
import 'package:uee234/screens/utils.dart';

import '../../components/round_button.dart';


class updateSoilAnimals extends StatefulWidget {
  const updateSoilAnimals({Key? key}) : super(key: key);
  

  
 
  @override
  State<updateSoilAnimals> createState() => _updateSoilAnimalState();

  
}

class _updateSoilAnimalState extends State<updateSoilAnimals> {

       final _formKey = GlobalKey<FormState>();
      final databaseRef = FirebaseDatabase.instance.ref().child('SoilAnimals');
      // firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;
      // File? _image;
       //final postController =TextEditingController();
      bool loading = false ;
      final picker = ImagePicker();
        FirebaseAuth _auth = FirebaseAuth.instance;
  //  final AnimaldescriptionController = TextEditingController();
  //  final animalidController = TextEditingController();
  
   final AnimalnameController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return ModalProgressHUD(
      inAsyncCall: loading,

    child: Scaffold(
    
      body: SingleChildScrollView(
        child :Column(
          children:[ 
                  
            Padding(
            padding : const EdgeInsets.symmetric(vertical:10,horizontal: 20),
          //  child :Form(
          //        key: _formKey,
          child:Column(children: [
              
        
            SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                 controller: AnimalnameController,
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
                  hintText: 'Insert Animal Name',
                 
                  border: OutlineInputBorder(
                    
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
        
            //  SizedBox(
            //     height: 30,
            //   ),
            //   TextFormField(
            //     keyboardType: TextInputType.text,
            //      controller: animalidController,
            //       maxLines: 1,
            //      style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //        ),
                 
            //     decoration: InputDecoration(
            //       filled: true,
            //        fillColor: Color(0xff306f60),     
            //        hintStyle: (
            //             TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold,
            //               )
            //             ),
            //       hintText: 'Insert Animal ID',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //   ),
        
        
            //    SizedBox(
            //      height: 30,
            //     ),
            
            //    TextFormField(
            //        keyboardType: TextInputType.text,
            //        controller: AnimaldescriptionController,
            //         maxLines: 4,
            //         style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 16,
            //        ),
            //        decoration: InputDecoration(
            //        filled: true,
            //        fillColor: Color(0xff306f60),     
            //        hintStyle: (
            //             TextStyle(
            //                 color: Colors.white,
            //                 fontSize: 16,
            //                 fontWeight: FontWeight.bold,
            //               )
            //             ),
                   
            //       hintText: 'Insert Animal Description',
                
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
                   
            //     ),
            //    )
          ]
        )
      )
          ]
    )
      )
    )
    );

  }
}