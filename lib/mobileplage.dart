import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
class MobileUI extends StatefulWidget {
  const MobileUI({super.key});

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/background.png"),
              fit: BoxFit.cover,),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children:[
                  SizedBox(height: 10.h,),
                  Text("ESTHETICA",style: TextStyle(
                      fontFamily: "commosbold",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff69443C)
                  ),),
                  Text("APP DEVELOPERS",style: TextStyle(
                    fontFamily: "commosregular",
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color(0xff69443C),
                  ),
                  ),
                  SizedBox(height: 18.h,),
                  Text("Launching",style: TextStyle(
                      fontFamily: "seasons",
                      height: 1,
                      fontSize: 50.sp,
                      color: Color(0xff69443C)
                  ),),
                  Row(
                    children: [
                      Text("soon",style: TextStyle(
                          fontFamily: "seasons",
                          height: 0.8,
                          fontSize: 50.sp,
                          color: Color(0xff69443C)
                      ),),
                      Text("!",style: GoogleFonts.ebGaramond(height: 0.8,fontSize: 50.sp,color: Color(0xff69443C),)),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text("We are currently making some",style: TextStyle(
                      fontFamily: "commosregular",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff69443C)
                  ),),
                  Text("improvements to our website",style: TextStyle(
                      fontFamily: "commosregular",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff69443C)
                  ),),
                  SizedBox(height: 10.h),
                  Text("Connect with us",style: TextStyle(
                      fontFamily: "commosregular",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff69443C)
                  ),),
                  SizedBox(height: 3.h),
                  Row(
                    children: [
                      Image.asset("assets/facebook.png",height: 50,width: 50,),
                      SizedBox(width: 10.w,),
                      Image.asset("assets/instagram.png",height: 50,width: 50,),
                      SizedBox(width: 10.w,),
                      Image.asset("assets/X.png",height: 50,width: 50,),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
