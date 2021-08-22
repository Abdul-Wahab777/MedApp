import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_chat/firebaseAuth.dart';
import 'package:flutter_chat/login/SigUpMem.dart';
import 'package:flutter_chat/main.dart';
import 'package:flutter_chat/main_page.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LoginMem extends StatefulWidget {
  const LoginMem({Key? key}) : super(key: key);

  @override
  _LoginMemState createState() => _LoginMemState();
}

class _LoginMemState extends State<LoginMem> {
  FirebaseService service = FirebaseService();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.indigo[900],
      //   title: Text(
      //     "Med Donor",
      //     style: TextStyle(color: Colors.white, fontSize: 15.sp),
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.person,
      //       color: Colors.white,
      //     ),
      //     Container(
      //         child: IconButton(
      //             onPressed: () {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => SignUpMeme()));
      //             },
      //             icon: Text(
      //               "Sign Up",
      //               style: TextStyle(color: Colors.white, fontSize: 6.8.sp),
      //             )))
      //   ],
      // ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NeumorphicText(
                "LOGIN",
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
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 8.h),
                child: Neumorphic(
                  style: NeumorphicStyle(
                    oppositeShadowLightSource: true,
                    color: Colors.white,
                    shape: NeumorphicShape.flat,
                    lightSource: LightSource.bottom,
                    boxShape: NeumorphicBoxShape.roundRect(
                        BorderRadius.circular(35.0)),
                    intensity: 10,
                    border: NeumorphicBorder(
                      color: Colors.white,
                      isEnabled: true,
                    ),
                  ),
                  child: TextFormField(
                    controller: email,
                    textAlignVertical: TextAlignVertical.bottom,
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Icon(
                            Icons.person,
                            size: 3.5.h,
                            color: Colors.indigo[900],
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Colors.indigo[900], fontSize: 14.sp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 6.w, right: 6.w, top: 5.h),
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo[900],
                        fontSize: 14.sp),
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Icon(
                            Icons.lock,
                            size: 3.h,
                            color: Colors.indigo[900],
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.indigo[900], fontSize: 14.sp),
                        border: OutlineInputBorder(
                            // borderSide: BorderSide(color: Color(0xff1A237A)
                            // ),
                            borderRadius: BorderRadius.circular(35.0))),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 5.w),
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "Forget Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2.h, bottom: 1.5.h),
                width: 50.w,
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
                        .login(email.text, pass.text)
                        .then((value) =>
                            {Get.snackbar("LogIn Successfully", "Success")})
                        .then(
                          (value) => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ali(),
                            ),
                          ),
                        ).catchError((onerror)=>Get.snackbar("Try Again", onerror.message));
                  },
                  child: Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpMeme()));
                },
                child: Text(
                  "Dont have an account?Sign up here",
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
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
