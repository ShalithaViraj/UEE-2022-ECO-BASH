import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:flutter/material.dart';

class ViewMoreTreat extends StatefulWidget {
  const ViewMoreTreat({Key? key, required this.TreatKey})
      : super(key: key);

  final String TreatKey;

  @override
  State<ViewMoreTreat> createState() => _ViewMoreTreatState();
}

class _ViewMoreTreatState extends State<ViewMoreTreat> {
  final descriptionController = TextEditingController();
  final organicidController = TextEditingController();
  final organicnameController = TextEditingController();
  bool loading = false;

  final oragnicImageController = TextEditingController();

  late DatabaseReference dbRef;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('Treat');
    final img = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('Treat')
        .child(widget.TreatKey)
        .child('treatimage');

    getorganicData();
  }

  void getorganicData() async {
    DataSnapshot snapshot = await dbRef.child(widget.TreatKey).get();

    Map organic = snapshot.value as Map;

    organicidController.text = organic['treatid'];
    organicnameController.text = organic['treatname'];
    descriptionController.text = organic['treatdesd'];
    oragnicImageController.text = organic['treatimage'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              width: double.infinity,
              height: 280,
              child: Row(children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: TextField(
                          
                          controller: organicnameController,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: (const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                            hintText: 'Insert Animal ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      
                      alignment: Alignment.centerLeft,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 27),
                        child: TextField(
                          controller: organicidController,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: (const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            )),
                            hintText: 'Insert Animal ID',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
               
                Container(
                  margin: const EdgeInsets.only(right: 0),
                  width: 192,
                  height: 280,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Image.network(
                    oragnicImageController.text,
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ),
            Container(
              height: 600,
              decoration: BoxDecoration(
                color: Color(0xff306f60),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "View More Details",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: descriptionController,
                      maxLines: 10,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff306f60)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xff306f60),
                        hintStyle: (const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                        hintText: 'Insert Animal ID',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 30,
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
