import 'package:flutter/material.dart';
import '../Constant1.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:navigation_dot_bar/navigation_dot_bar.dart';
// import 'Detail.dart';
class Detail extends StatelessWidget {
Detail({this.image});
// final String image;
var image;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Detail",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      
      
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(children: [
           Expanded(
             child: Container(
          // height: size.height/5,
          width: double.infinity,
          child: Image.asset(image),
          // child:Image(image:
          //    AssetImage(image,) , fit: BoxFit.cover,),
          // decoration: BoxDecoration(
         
          //   // borderRadius: BorderRadius.circular(20),
          //   color: Colors.black,                   
          //   image: DecorationImage(
          //     image:  AssetImage(image),
          //     fit: BoxFit.cover,
          //   ),
    //           
          ),
           ),
        
              
            
            Align(
              alignment: Alignment.bottomCenter,
             
              child: Expanded(
                child: Container( 
                  height: 380,
                   width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                color: kGrey1Color,
              ),
                 
                   child:Container(
                     margin: EdgeInsets.symmetric(horizontal: 20,),
                     child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                       
                       children: [
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                 "Panadole",
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
                    ),

Text("12min ago",)

                           ],
                         ),
                  
                    // SizedBox(height: 6.0),
                    Text(
                      "0.2\$",
                      // doctor.specialist,
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
                    ),
                     Text(
                      "2 rupes",
                      // doctor.specialist,
                      overflow: TextOverflow.ellipsis,
                       style:TextStyle(
    fontSize:20.0,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  ),
                    ),
                    
                      Text(
                      "Expire date",
                      // doctor.specialist,
                      overflow: TextOverflow.ellipsis,
                       style:  TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
                    ),
                    Text(
                      "21 March 2021",
                      style:TextStyle(
    fontSize:20.0,
    fontWeight: FontWeight.w500,
    color: Colors.black54,
  ),
                    ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      
                
                style:  ButtonStyle(
                   
                  
    backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
 shape:MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(35.0),
     
    )
  )  ),
                
                onPressed: () {
                },
                child: Container(
                  width: 300,
                  height: 50,
                  child: Center(
                    child: Text(
                        "Accept",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                    ),
                  ),
                ),
              ),
                  ),
          
                    

                     ],),
                   )),
        ),
            ),
            
          ],
        ),
         ),
      )
    );
  }
}