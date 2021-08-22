import 'package:flutter/material.dart';
import '../Constant1.dart';
import 'Detail.dart';
// import 'doctor_details.dart';
class AllDoMedicine extends StatelessWidget {
 AllDoMedicine({this.image
 
  });
  // final String image;
var image;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail(image:image)));
        },
        child:Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: EdgeInsets.all(12.0),
        width: double.infinity,
        height: 140.0,
        child: Row(
          children: [
            Container(
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.0),
                color: kBlue2Color,
                image: DecorationImage(
                  image: AssetImage(image),
                  // image:  AssetImage("assets/medical.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                 "Donation",
                      overflow: TextOverflow.ellipsis,
                      style:  TextStyle(
    fontSize:size.height/30 ,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
                    ),
                    // SizedBox(height: 6.0),
                    Text(
                      "pandile",
                      // doctor.specialist,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize:  size.height/55),

                      // style: kCategoryStyle.copyWith(color: kGrey2Color),
                    ),
                    Spacer(),
                      Text(
                      "Expire date",
                      // doctor.specialist,
                      overflow: TextOverflow.ellipsis,
                      style: kCategoryStyle.copyWith(fontSize:  size.height/65,color: Colors.grey[900]),
                    ),
                    // Spacer(),
                    Text(
                      "21 March 2021",
                      style: TextStyle(fontSize:  size.height/70),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8.0),
            Container(
              width: 70.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 
                  SizedBox(height:size.height/60),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "12 min ago",
                      style: kButtonStyle.copyWith(fontSize: size.height/65,color: Colors.black),
                    ),
                  ),
                
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}