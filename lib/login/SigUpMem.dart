import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat/firebaseAuth.dart';
import 'package:flutter_chat/login/LoginMember.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SignUpMeme extends StatefulWidget {
  const SignUpMeme({Key? key}) : super(key: key);

  @override
  _SignUpMemeState createState() => _SignUpMemeState();
}

class _SignUpMemeState extends State<SignUpMeme> {
  FirebaseService service = FirebaseService();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController cpass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Text(
              //   "Sign Up",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontSize: 18.sp,
              //       fontWeight: FontWeight.bold),
              // ),
              NeumorphicText(
                "Sign In",
                style: NeumorphicStyle(
                  shadowLightColor: Colors.blueGrey,
                  lightSource: LightSource.topRight,
                  depth: 3.5,
                  intensity: 5,
                  color: Colors.indigo[900],
                ),
                textStyle: NeumorphicTextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 7.h),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      lightSource: LightSource.bottom,
                      oppositeShadowLightSource: true,
                      color: Colors.white,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(35.0)),
                      intensity: 10,
                      border: NeumorphicBorder(
                        color: Colors.white,
                        isEnabled: true,
                      )),
                  child: TextFormField(
                    controller: name,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(
                            Icons.person,
                            size: 3.h,
                            color: Colors.indigo[900],
                          ),
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.indigo[900],
                        ),
                        border: OutlineInputBorder(
                            // borderSide: BorderSide(color: Color(0xff1A237A)),
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 4.5.h),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      lightSource: LightSource.bottom,
                      oppositeShadowLightSource: true,
                      color: Colors.white,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(35.0)),
                      intensity: 10,
                      border: NeumorphicBorder(
                        color: Colors.white,
                        isEnabled: true,
                      )),
                  child: TextFormField(
                    controller: email,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.email,
                            size: 3.h,
                            color: Colors.indigo[900],
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.indigo[900],
                        ),
                        border: OutlineInputBorder(
                            // borderSide: BorderSide(color: Color(0xff1A237A)),
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 4.5.h),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      lightSource: LightSource.bottom,
                      oppositeShadowLightSource: true,
                      color: Colors.white,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(35.0)),
                      intensity: 10,
                      border: NeumorphicBorder(
                        color: Colors.white,
                        isEnabled: true,
                      )),
                  child: TextFormField(
                    controller: pass,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Icon(
                            Icons.lock,
                            size: 3.h,
                            color: Colors.indigo[900],
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.indigo[900],
                        ),
                        border: OutlineInputBorder(
                            // borderSide: BorderSide(color: Color(0xff1A237A)),
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 4.5.h),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      lightSource: LightSource.bottom,
                      oppositeShadowLightSource: true,
                      color: Colors.white,
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(35.0)),
                      intensity: 10,
                      border: NeumorphicBorder(
                        color: Colors.white,
                        isEnabled: true,
                      )),
                  child: TextFormField(
                    controller: cpass,
                    textAlignVertical: TextAlignVertical.bottom,
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Icon(
                          Icons.lock,
                          size: 3.h,
                          color: Colors.indigo[900],
                        ),
                      ),
                      hintText: "Conferm Password",
                      hintStyle: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.indigo[900],
                      ),
                      border: OutlineInputBorder(
                        // borderSide: BorderSide(color: Color(0xff1A237A)),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 7.h,
                ),
                width: 60.w,
                height: 7.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(10.0),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.greenAccent),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff1A237A)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(35.0),
                      ))),
                  onPressed: () {
                    service
                        .singn(name.text, email.text, pass.text)
                        .then((value) {
                      Get.snackbar("SignIn Successfullt", "Success",
                          animationDuration: Duration(seconds: 3));
                    }).then(
                      (value) => (Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginMem(),
                        ),
                      )),
                    ).catchError((onerror)=>Get.snackbar("Try Again", onerror.message));
                  },
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
