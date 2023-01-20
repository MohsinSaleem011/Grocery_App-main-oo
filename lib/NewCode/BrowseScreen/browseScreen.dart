import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Home%20Module/discountsScreen.dart';

import '../ProductsCategoryScreen.dart';

class BrowseScreen extends StatelessWidget {
  TextEditingController searchC = TextEditingController();
  List categoryImage = [
    "https://images.pexels.com/photos/1656666/pexels-photo-1656666.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/65175/pexels-photo-65175.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/197907/pexels-photo-197907.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2064366/pexels-photo-2064366.jpeg?auto=compress&cs=tinysrgb&w=600https://images.pexels.com/photos/825661/pexels-photo-825661.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2789328/pexels-photo-2789328.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6532373/pexels-photo-6532373.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4871159/pexels-photo-4871159.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];
  List categoryName = [
    'Vegetables',
    'Meat',
    'Fruit',
    "Dairy",
    "Drinks",
    'Vegetables',
    'Meat',
    'Fruit ',
    "Dairy",
    "Drinks",
  ];
  final _random = new Random();
  // 'Pizza','Latest deals','Resturants rewards','Twister','Burger','Kentuckey','Juice'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                    ),
                    child: TextFormField(
                      controller: searchC,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_sharp),
                        filled: true,
                        hintText: "Search category",
                        fillColor: Colors.grey.shade100,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),

                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Text(
                          'Daily Groceries',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 290.h,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.3,
                        mainAxisSpacing: 10,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryImage.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductsCategoryScreen(
                                  title: categoryName[index],
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 130.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      // color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.zero,
                                            bottomRight: Radius.zero,
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                categoryImage[index]),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${categoryName[index]}",
                                              style: GoogleFonts.dmSans(
                                                  color: Colors.black),
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
                        );
                      },
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Text(
                          'Oriental Groceries',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 290.h,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.3,
                        mainAxisSpacing: 10,
                      ),
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryImage.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductsCategoryScreen(title: "Vegetables"),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 130.h,
                                  width: 170.w,
                                  decoration: BoxDecoration(
                                      // color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 90.h,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.zero,
                                            bottomRight: Radius.zero,
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                categoryImage[index]),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              "${categoryName[index]}",
                                              style: GoogleFonts.dmSans(
                                                  color: Colors.black),
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
                        );
                      },
                    ),
                  ),
                  // Expanded(
                  //   child: GridView.builder(
                  //       padding: EdgeInsets.symmetric(horizontal: 10),
                  //       itemCount: categoryName.length,
                  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2,
                  //         crossAxisSpacing: 10,
                  //         childAspectRatio: 1.3,
                  //         mainAxisSpacing: 10,
                  //       ),
                  //       itemBuilder: (BuildContext context, int index) {
                  //         return InkWell(
                  //           onTap: () {
                  //             Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                 builder: (context) => Products(
                  //                   categoryName: categoryName[index],
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //           child: Container(
                  //             height: 130.h,
                  //             width: 160.w,
                  //             decoration: BoxDecoration(
                  //                 // color: Colors.blueGrey,
                  //                 borderRadius: BorderRadius.circular(20),
                  //                 border:
                  //                     Border.all(width: 0.2, color: Colors.grey)),
                  //             child: Column(
                  //               children: [
                  //                 Container(
                  //                   height: 90.h,
                  //                   width: MediaQuery.of(context).size.width,
                  //                   decoration: BoxDecoration(
                  //                     color: Colors.grey,
                  //                     borderRadius: BorderRadius.only(
                  //                       bottomLeft: Radius.zero,
                  //                       bottomRight: Radius.zero,
                  //                       topRight: Radius.circular(20),
                  //                       topLeft: Radius.circular(20),
                  //                     ),
                  //                     image: DecorationImage(
                  //                       fit: BoxFit.cover,
                  //                       image: NetworkImage(categoryImage[index]),
                  //                     ),
                  //                   ),
                  //                 ),
                  //                 Row(
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Padding(
                  //                       padding: const EdgeInsets.all(8.0),
                  //                       child: Text(
                  //                         "${categoryName[index]}",
                  //                         style: GoogleFonts.dmSans(
                  //                             color: Colors.black),
                  //                       ),
                  //                     ),
                  //                   ],
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         );
                  //       }),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


// Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 18.0, vertical: 0),
                  //       child: Text(
                  //         'Everyday Groceries',
                  //         textAlign: TextAlign.center,
                  //         style: GoogleFonts.dmSans(
                  //           color: Colors.black,
                  //           fontSize: 20,
                  //           fontWeight: FontWeight.w700,
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(height: 10.h),
                  // Expanded(
                  //   child: InkWell(
                  //     onTap: () {
                  //       showMaterialModalBottomSheet(
                  //         shape: OutlineInputBorder(
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(30),
                  //             topRight: Radius.circular(30),
                  //           ),
                  //           borderSide: BorderSide.none,
                  //         ),
                  //         context: context,
                  //         builder: (context) => EverydayGroceryScreen(),
                  //       );
                  //     },
                  //     child: Expanded(
                  //       child: Container(
                  //         width: double.infinity,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/everyday.PNG'),
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Container(
                  //             height: 45.h,
                  //             width: 180.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.black.withOpacity(0.6),
                  //               borderRadius: BorderRadius.circular(10),
                  //               // boxShadow: BoxShadow[]
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 'Everyday Grocery',
                  //                 style: GoogleFonts.dmSans(
                  //                   color: Colors.white,
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 10.h),
                  // Expanded(
                  //   child: InkWell(
                  //     onTap: () {
                  //       showMaterialModalBottomSheet(
                  //         shape: OutlineInputBorder(
                  //           borderRadius: BorderRadius.only(
                  //             topLeft: Radius.circular(30),
                  //             topRight: Radius.circular(30),
                  //           ),
                  //           borderSide: BorderSide.none,
                  //         ),
                  //         context: context,
                  //         builder: (context) => OrientalGroceryScreen(),
                  //       );
                  //     },
                  //     child: Expanded(
                  //       child: Container(
                  //         width: double.infinity,
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(10),
                  //           image: DecorationImage(
                  //             image: AssetImage('assets/oriental.PNG'),
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //         child: Center(
                  //           child: Container(
                  //             height: 45.h,
                  //             width: 180.w,
                  //             decoration: BoxDecoration(
                  //               color: Colors.black.withOpacity(0.6),
                  //               borderRadius: BorderRadius.circular(10),
                  //               // boxShadow: BoxShadow[]
                  //             ),
                  //             child: Center(
                  //               child: Text(
                  //                 'Oriental Grocery',
                  //                 style: GoogleFonts.dmSans(
                  //                   color: Colors.white,
                  //                   fontSize: 18,
                  //                   fontWeight: FontWeight.w700,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // =================================================================================================================
                  // Image.asset('assets/oriental.PNG'),

  