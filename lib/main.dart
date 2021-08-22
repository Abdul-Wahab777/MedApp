
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_chat/chatSc/chat_body.dart';
import 'package:flutter_chat/data/medcineform.dart';
import 'package:flutter_chat/login/LoginMember.dart';
import 'package:flutter_chat/login/SigUpMem.dart';
import 'package:sizer/sizer.dart';
import 'data/AllDonation.dart';
import 'data/test.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_chat/main_page.dart';
import '../Constant1.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:navigation_dot_bar/navigation_dot_bar.dart';

// import 'modules/main_page.dart';

Color color = Colors.red;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (BuildContext context, orientation, devicetype) {
      return MaterialApp(
          title: 'Health App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: LoginMem());
    });
  }
}

class Ali extends StatelessWidget {
  List<String> Images = [
    "assets/trans.jpg",
    "assets/trans.jpg",
    "assets/trans.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
   bottomNavigationBar:BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  backgroundColor: Colors.indigo[900],
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white.withOpacity(.60),
  selectedFontSize: 14,
  unselectedFontSize: 14,
  onTap: (value) {
    // Respond to item press.
  },
  items: [
    BottomNavigationBarItem(
      title: Text('Home'),
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      title: Text('Favorites'),
      icon: Icon(Icons.favorite),
    ),
    BottomNavigationBarItem(
      title: Text('Places'),
      icon: Icon(Icons.location_on),
    ),
    BottomNavigationBarItem(
      title: Text('chat'),
      icon: MaterialButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CharBody()));
      },child: Icon(Icons.chat)),
    ),
  ],
),
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: AssetImage("assets/trans.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Hello,\n",
                            style: kTitleStyle.copyWith(
                              fontSize: 26.0,
                              // color: kGrey2Color,
                            ),
                          ),
                          TextSpan(
                            text: "Ali",
                            style: kTitleStyle.copyWith(
                              fontSize: 21.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: kGrey2Color,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainPage()));
                          },
                          icon: Icon(
                            Icons.notifications_none,
                            size: 25.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                height: 55.0,
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                decoration: BoxDecoration(
                  color: kGrey1Color,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(
                        Icons.search,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: 150.0, autoPlay: true, enlargeCenterPage: true),
                  items: [
                    "assets/trans.jpg",
                    "assets/trans.jpg",
                    "assets/trans.jpg",
                    "assets/trans.jpg"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Expanded(
                          child: Container(
                            width: 60078,
                            height: 150.0,
                            // margin: EdgeInsets.symmetric(horizontal: 18.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: kBlue2Color,
                              image: DecorationImage(
                                image: AssetImage(i),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Container(
                height: 100,
                // width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                      children: [
                        MaterialButton(onPressed: () { 
                         },
                        child: CategoriesItem(title: "Donator", color: Colors.red[300])),
                        CategoriesItem(title: "Consumer", color: Colors.pink[300]),
                        CategoriesItem(
                            title: "Appointment", color: Colors.grey[300]),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                  color: kGrey1Color,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Recent Donation",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Spacer(),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Donation(images: Images)));
                          },
                          child: Text(
                            "See all",
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: ListView.builder(
                        itemCount: 3,
                        // scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (context, index) {
                          return AllDoMedicine(image: Images[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationDotBar {
}

class CategoriesItem extends StatelessWidget {
  // final String title;
  // final Color color;
  var color;
  var title;
  CategoriesItem({
    this.title,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: size.width / 30, vertical: size.height / 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.height / 40),
          color: color,
        ),
        child: Center(
          child: Text(title,
              style: kCategoryStyle.copyWith(
                  color: Colors.white,
                  fontSize: size.height / 50,
                  fontWeight: FontWeight.bold)),
        ),
      ),
    );
  }
}

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Sizer(builder: (BuildContext context, orientation, devicetype) {
//       return MaterialApp(
//         home: SignIn(),
//         // home: CharBody(),
//         // home: chatMessages(),
//       );
//     });
//   }
// }
