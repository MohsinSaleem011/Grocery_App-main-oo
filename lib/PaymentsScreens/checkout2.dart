import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import '../Location Module/location.dart';

class CheckOut2 extends StatefulWidget {
  @override
  State<CheckOut2> createState() => _CheckOut2State();
}

class _CheckOut2State extends State<CheckOut2> {
  bool visible = true;
  var Currentindex = 0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xffF6F6F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.035,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cart",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Checkout",
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 37,
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 25,
                        width: 116,
                        decoration: BoxDecoration(
                          color: Color(0xff23AA49),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "Delivery",
                            style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        "Collect",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.black),
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
                    prefixIcon: Icon(Icons.location_on)),
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
                height: 55,
                width: 315,
                decoration:   Currentindex == 0?BoxDecoration(
              color:
              Colors.grey.withOpacity(0.50),

              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ):BoxDecoration(
      color:
      Colors.white,

      border: Border.all(width: 1, color: Colors.black),
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
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            Text(
                              "Delivered Directly to you",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
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
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Currentindex = 1;
                  print(Currentindex);
                });
              },
              child: Container(
                height: 55,
                width: 315,
                decoration: Currentindex == 1?BoxDecoration(
                  color:
                  Colors.grey.withOpacity(0.50),

                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ):BoxDecoration(
                  color:
                  Colors.white,

                  border: Border.all(width: 1, color: Colors.black),
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
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  Currentindex = 2;
                  print(Currentindex);
                });
              },
              child: Container(
                height: 55,
                width: 315,
                decoration: Currentindex == 2?BoxDecoration(
                  color:
                       Colors.grey.withOpacity(0.50),

                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ):BoxDecoration(
                  color:
                  Colors.white,

                  border: Border.all(width: 1, color: Colors.black),
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
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckOut2()));
              },
              child: InkWell(
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
                            height: 230,
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
                                  SizedBox(
                                    height: 10,
                                  ),


                                  Container(
                                    height: 60,
                                    width: 100,
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
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800),
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
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
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
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          locationScreen()));
                                            },
                                            child: Text(
                                              "Ok",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 15,
                                                  color: Colors.blue),
                                            )),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 54,
                  width: 302,
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
            ),
          ],
        ),
      ),
    );
  }
}
