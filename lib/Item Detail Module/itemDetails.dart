import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/cart.dart';

import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int numberOfItems = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ClipPath(
                        clipper: ProsteBezierCurve(
                          position: ClipPosition.bottom,
                          list: [
                            BezierCurveSection(
                              start: Offset(0, 330),
                              top: Offset(screenWidth / 2, 380),
                              end: Offset(screenWidth, 330),
                            ),
                          ],
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          color: Color(0xffF3F5F7),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 18, vertical: 35),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 44,
                                      width: 44,
                                      child: ElevatedButton(
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: Color(0xff06161C),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(10),
                                          side: BorderSide(color: Colors.white),
                                          primary: Colors.white,
                                          shadowColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/item.png',
                                  width:
                                      MediaQuery.of(context).size.height * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 24, top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    if (numberOfItems > 0) {
                                      numberOfItems--;
                                      print(numberOfItems);
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (ctx) => AlertDialog(
                                          title: Text('Alert'),
                                          content: Text(
                                              'Quantity must be greater than zero'),
                                          actions: [
                                            MaterialButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text(
                                                  'OK',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ))
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                );
                              },
                              child: Container(
                                // alignment: Alignment.center,
                                // padding: EdgeInsets.only(bottom: 30),
                                width: 36.w,
                                height: 36.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade100,
                                ),
                                child: Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 22.0),
                                    child: Icon(
                                      Icons.minimize,
                                      size: 25,
                                      color: Color(0xff06161C),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Text(
                              '${numberOfItems}',
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                              ),
                            ),
                            SizedBox(width: 16.w),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  numberOfItems++;
                                  print(numberOfItems);
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 36.w,
                                height: 36.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color(0xff23AA49),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Arabic Ginger',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  child: Text(
                                    '??4',
                                    style: GoogleFonts.dmSans(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xffFF324B),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffF3F5F7),
                                      backgroundImage:
                                          AssetImage('assets/profile.png'),
                                    ),
                                  ),
                                  SizedBox(width: 11),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Grocer',
                                            style: GoogleFonts.dmSans(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color: Color(0xff06161C),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        padding: EdgeInsets.only(left: 24),
                        child: Column(
                          children: [
                            Text(
                              'Ginger is flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.',
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff979899),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Weight',
                                  style: GoogleFonts.dmSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 50,
                                    decoration: index == 0
                                        ? BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.green,
                                          )
                                        : BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 0.5, color: Colors.grey),
                                          ),
                                    child: Center(
                                      child: Text(
                                        "250G",
                                        style: index == 0
                                            ?  GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.white,
                                          )
                                            :  GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.black,
                                          )
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      index = 1;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 50,
                                    decoration: index == 1
                                        ? BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.green,
                                          )
                                        : BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 0.5, color: Colors.grey),
                                          ),
                                    child: Center(
                                      child: Text(
                                        "500G",
                                        style: index == 1
                                            ?  GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.white,
                                          )
                                            : GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Colors.black,
                                          ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xffF1F1F5)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image(
                                      image: AssetImage('assets/organic.PNG'),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Text(
                                          '100%',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff23AA49),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Organic',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff979899),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xffF1F1F5)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image(
                                      image: AssetImage('assets/year.PNG'),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Text(
                                          '1 Year',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff23AA49),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Expiration',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff979899),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 150,
                              height: 67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xffF1F1F5)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image(
                                      image: AssetImage('assets/review.PNG'),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text(
                                              '4.8',
                                              style: GoogleFonts.dmSans(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Color(0xff23AA49),
                                              ),
                                            ),
                                            Text(
                                              ' (256)',
                                              style: GoogleFonts.dmSans(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: Color(0xff979899),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          'Reviews',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff979899),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 67,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Color(0xffF1F1F5)),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 16),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    child: Image(
                                      image: AssetImage('assets/gram.PNG'),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        child: Text(
                                          '80 kcal',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            color: Color(0xff23AA49),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          '100 Gram',
                                          style: GoogleFonts.dmSans(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Color(0xff979899),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: 24,
                right: 24,
                child: Container(
                  height: 53,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cartScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff23AA49),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      'Add to cart',
                      style: GoogleFonts.dmSans(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
