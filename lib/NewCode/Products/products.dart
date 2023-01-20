import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Detail%20Module/itemDetails.dart';
import 'package:grocery/NewCode/ProductDetail/productDetail.dart';

import '../../Home Module/best_selling_tile.dart';

class Products extends StatelessWidget {
  final String categoryName;
  Products({required this.categoryName});
  List a = [
    "assets/tomato.png",
    "assets/ginger.png",
    "assets/tomato.png",
    "assets/ginger.png",
    "assets/tomato.png",
    "assets/ginger.png",
    "assets/tomato.png",
    "assets/ginger.png",
  ];

  List b = [
    "Bell Pepper Red",
    "Arabic Ginger",
    "Brabic Ginger",
    "Arabic Ginger",
    "Bell Pepper Red",
    "Arabic Ginger",
    "Bell Pepper Red",
    "Arabic Ginger",
  ];

  List c = [
    "1kg, 6\£",
    "1kg, 4\£",
    "1kg, 6\£",
    "1kg, 4\£",
    "1kg, 6\£",
    "1kg, 4\£",
    "1kg, 6\£",
    "1kg, 4\£",
  ];

  List d = [
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
    " ",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xff06161C),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Text(
                    "${categoryName}",
                    style: GoogleFonts.dmSans(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                child: GridView.builder(
                    itemCount: a.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1.0,
                      crossAxisSpacing: 5.0,
                      childAspectRatio: 2 / 3,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ItemDetails()));
                          },
                          child: Container(
                            // margin: EdgeInsets.only(left: 10,),
                            decoration: BoxDecoration(
                                color: Color(0xffF3F5F7),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(a[index]))),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 16.0,
                                    right: 12,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        b[index],
                                        style: GoogleFonts.dmSans(
                                            color: Colors.black,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        c[index],
                                        style: GoogleFonts.dmSans(
                                            color: Colors.red,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 60,
                                            // margin: EdgeInsets.only(left: 10),
                                            child: Text(
                                              d[index],
                                              style: GoogleFonts.dmSans(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                                child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            )),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
