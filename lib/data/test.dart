import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat/data/medcineform.dart';
import 'AllDonation.dart';
import 'fila.dart';

String ytyt() {
  return File('medical.png').path;
}

// import 'package:path/path.dart';
// import 'package:file/file.dart';
class Donation extends StatelessWidget {
  Donation({required this.images});
  final List<String> images;

  //  File File(path);
  // String filePath = 'assets\medical.png';
// void fun() async{
// File=await File(path);
// // new File().readAsString().then((String contents) {
// //   print(contents);
// });
// }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // print(ytyt());
          // await Share.shareFiles([ytyt()],text: "Subahn");

          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Chart()));
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => MedicineDetail()));
        },
        backgroundColor: Colors.blueGrey[700],
        // color: Colors.blueGrey[300],
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("All Donation", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return AllDoMedicine(image: images[index]);
        },
      ),
    );
  }
}
