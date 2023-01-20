import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/app_bar.dart';
import 'package:grocery/Home%20Module/discountsScreen.dart';
import 'package:grocery/store/storescreen.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 1.1.sh,
            // padding: EdgeInsets.only(left: 24,right: 24,top: 24),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 15.h),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: MediaQuery.of(context).size.height*0.07,
                        height: 44,
                        color: Colors.transparent,

                        child: homescreenAppbar(),
                      ),
                      SizedBox(height: 15.h),
                      // customTextbox(
                      //   height: 50,
                      //   width: MediaQuery.of(context).size.width,
                      //   text: 'Search category',
                      //   textSize: 14,
                      // ),

                      Container(
                        height: 180.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DiscountScreen(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  // height: MediaQuery.of(context).size.height*0.2,
                                  height: 158.h,
                                  width:
                                      MediaQuery.of(context).size.width * 0.89,
                                  decoration: BoxDecoration(
                                      color: Color(0xff23AA49),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Text(
                                                "Get your first order 35% off",
                                                style: GoogleFonts.dmSans(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22.sp),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(15),
                                              height: 40.h,
                                              width: 90.w,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.white,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "Shop now",
                                                  style: GoogleFonts.dmSans(
                                                      color: Color(0xff23AA49),
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 14.sp),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.45,
                                        child: Image(
                                          image:
                                              AssetImage("assets/990180.png"),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 25,
                    left: 15,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Nearby Stores",
                        style: GoogleFonts.roboto(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "See all",
                        style: GoogleFonts.roboto(
                          color: Colors.green,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(child: StoreScreen()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
