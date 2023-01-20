import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/PaymentsScreens/checkout2.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../Location Module/location.dart';
class CheckOutWidget2 extends StatefulWidget {
  @override
  State<CheckOutWidget2> createState() => _CheckOutWidget2State();
}

class _CheckOutWidget2State extends State<CheckOutWidget2> {
  int Currentindex=0;
  int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.87,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Checkout",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 37.h,
                width: 335.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: (){
                          setState(() {
                            index=0;
                          });
                        },
                        child: Container(
                          height: 25.h
                          ,
                          width: 136.w,
                          decoration: index==0?BoxDecoration(
                            color: Color(0xff23AA49),
                            borderRadius: BorderRadius.circular(20),
                          ):BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Delivery",
                               style:index==0? GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white): GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            index=1;
                          });
                        },
                        child: Container(
                          height: 25.h,
                          width: 130.w,
                          decoration: index==1?BoxDecoration(
                            color: Color(0xff23AA49),
                            borderRadius: BorderRadius.circular(20),
                          ):BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Pick up",
                              style:index==1? GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white): GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Locations",
                    hintStyle: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                    prefixIcon: IconButton(
    onPressed: (){},
                       icon: Icon(Icons.add_location_alt_outlined)),
    )
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Leave at Door",
                    labelStyle: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                    hintText: "Add note:",
                    hintStyle: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Colors.green),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                    prefixIcon: Icon(Icons.sensor_door)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Time to deliver",
                    hintStyle: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Colors.black),
                    suffixIcon: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("15-30 Min(s)"),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Currentindex = 0;
                  print(Currentindex);
                });
              },
              child: Container(
                height: 55.h,
                width: 340.w,
                decoration:   Currentindex == 0?BoxDecoration(
                  color:
                  Colors.green,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ):BoxDecoration(
                  color:
                  Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],


                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Priority",
                              style:Currentindex==0? GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w400, fontSize: 14.sp,color: Colors.white):GoogleFonts.dmSans(
    fontWeight: FontWeight.w400, fontSize: 14,),
                            ),
                            // SizedBox(height: 3.h,),
                            Text(
                              "Delivered Directly to you",
                              style:Currentindex==0? GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: Colors.white,
                              ):GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: 10.sp,
                                color: Colors.black.withOpacity(0.40),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Currentindex = 1;
                  print(Currentindex);
                });
              },
              child: Container(
                height: 55.h,
                width: 340.w,
                decoration: Currentindex == 1?BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color:
                  Colors.green,

                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ):BoxDecoration(
                  color:
                  Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],

                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Standard",
                          style:Currentindex==1? GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 14,color: Colors.white):GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 14,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Currentindex = 2;
                  print(Currentindex);
                });
              },
              child: Container(
                height: 55.h,
                width: 340.w,
                decoration: Currentindex == 2?BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.green,

                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ):BoxDecoration(
                  color:
                  Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],

                  // border: Border.all(width: 0.3, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Schedule",
                          style:Currentindex==2? GoogleFonts.dmSans(
                              fontWeight: FontWeight.w400, fontSize: 14,color: Colors.white):GoogleFonts.dmSans(
                            fontWeight: FontWeight.w400, fontSize: 14,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h
            ),
            InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          height: 204.h
                          ,
                          width: MediaQuery.of(context).size.width * 0.95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [



                                Container(
                                  height: 60.h
                                  ,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                          AssetImage("assets/logo.png"))),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Enjoying grocero?",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Tap a star to rate  it on the\n play store",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.dmSans(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SmoothStarRating(
                                        allowHalfRating: false,
                                        onRatingChanged: (v) {
                                          var rating = v;
                                          setState(() {});
                                        },
                                        starCount: 5,
                                        rating:4.0,
                                        size: 20.0,
                                        filledIconData: Icons.star,
                                        halfFilledIconData: Icons.blur_on,
                                        color: Colors.green,
                                        borderColor: Colors.green,
                                        spacing:0.0
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => locationScreen()
                                                ),

                                            );
                                          },
                                          child: Text(
                                            "Ok",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15.sp,
                                                color: Colors.black),
                                          )),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Container(
                height: 54.h,
                width: 340.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff23AA49)),
                child: Center(
                  child: Text(
                    "Done",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: 10.h
            ),
          ],
        ),
      ),
    );
  }
}
