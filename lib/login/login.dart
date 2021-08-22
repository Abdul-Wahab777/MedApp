
import 'package:flutter/material.dart';
import 'package:flutter_chat/chatSc/chat_body.dart';
import 'package:flutter_chat/firebaseAuth.dart';
import 'package:get/get.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  FirebaseService service = FirebaseService();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  login() {
    service.login(email.text, pass.text).then((value) => {
          Get.snackbar("Login Successful", "Success"),
        });
  }
@override
  void dispose() {
    super.dispose();
    email.dispose();
    pass.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Email", border: OutlineInputBorder())),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: pass,
                  decoration: InputDecoration(
                      hintText: "pass", border: OutlineInputBorder())),
              GestureDetector(
                onTap: () {login();
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CharBody()));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.black,
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
