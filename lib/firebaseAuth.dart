import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore store = FirebaseFirestore.instance;
  var userid;
  CollectionReference reference =
      FirebaseFirestore.instance.collection("userInfo");
       CollectionReference messagesRef =
      FirebaseFirestore.instance.collection("messages");
  Future singn(String name, String email, String pass) async {
    try {
      await auth.createUserWithEmailAndPassword(email: email, password: pass);
      userid = auth.currentUser!.uid;
      Map<String, dynamic> data = {
        'name': name,
        'email': email,
        'uid': userid,
      };
      await reference.add(data);
    } catch (e) {
      return e;
    }
  }

  Future login(String email, String pass) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: pass);
    } catch (e) {}
  }
  String? currntEmail= FirebaseAuth.instance.currentUser!.email;
  // Future setMessagesData(String message,var name)async{
  //    try {
  //      print(name);
  //     Map<String, dynamic> data = {
        
  //       'message': message,
  //       'From': name?? "NUll Name",
  //     };
  //     await messagesRef.add(data).then((value) =>Get.snackbar("Data submitt", "Succes"), );
  //     print(messagesRef.add(data));
  //   } catch (e) {
  //     print(e);}
  // }
}
