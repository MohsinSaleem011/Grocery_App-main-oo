import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item_tile.dart';

class itemScreen extends StatefulWidget {
  itemScreen({Key? key}) : super(key: key);

  @override
  State<itemScreen> createState() => _itemScreenState();
}

class _itemScreenState extends State<itemScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.black12,
              // height: MediaQuery.of(context).size.height*0.2,
              height: 44,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 24, top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(Icons.arrow_back)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TORTHAI",
                        style: GoogleFonts.dmSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: GestureDetector(
                        onTap: () {}, child: Icon(Icons.search)),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(right: 24),
                  //   height: 44,
                  //   width: 44,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: Icon(
                  //       Icons.search,
                  //       color: Color(0xff06161C),
                  //     ),
                  //     style: ElevatedButton.styleFrom(
                  //       shape: CircleBorder(),
                  //       padding: EdgeInsets.all(10),
                  //       side: BorderSide(color: Colors.white),
                  //       primary: Colors.white,
                  //       shadowColor: Colors.white,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 37,
            //     width: 335,
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: Center(
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: [
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 index = 0;
            //               });
            //             },
            //             child: Container(
            //               height: 25.h,
            //               width: 136.w,
            //               decoration: index == 0
            //                   ? BoxDecoration(
            //                       color: Color(0xff23AA49),
            //                       borderRadius: BorderRadius.circular(20),
            //                     )
            //                   : BoxDecoration(
            //                       color: Colors.grey.shade100,
            //                       borderRadius: BorderRadius.circular(20),
            //                     ),
            //               child: Center(
            //                 child: Text(
            //                   "Delivery",
            //                   style: index == 0
            //                       ? GoogleFonts.dmSans(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 15,
            //                           color: Colors.white)
            //                       : GoogleFonts.dmSans(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 15,
            //                           color: Colors.black),
            //                 ),
            //               ),
            //             ),
            //           ),
            //           InkWell(
            //             onTap: () {
            //               setState(() {
            //                 index = 1;
            //               });
            //             },
            //             child: Container(
            //               height: 25.h,
            //               width: 130.w,
            //               decoration: index == 1
            //                   ? BoxDecoration(
            //                       color: Color(0xff23AA49),
            //                       borderRadius: BorderRadius.circular(20),
            //                     )
            //                   : BoxDecoration(
            //                       color: Colors.grey.shade100,
            //                       borderRadius: BorderRadius.circular(20),
            //                     ),
            //               child: Center(
            //                 child: Text(
            //                   "Pick up",
            //                   style: index == 1
            //                       ? GoogleFonts.dmSans(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 15,
            //                           color: Colors.white)
            //                       : GoogleFonts.dmSans(
            //                           fontWeight: FontWeight.w500,
            //                           fontSize: 15,
            //                           color: Colors.black),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            TabBar(
              labelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
              indicatorColor: Colors.green,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.green,
              tabs: [
                Tab(text: ("Vegetable")),
                Tab(
                  text: ("Fruit"),
                ),
                Tab(
                  text: ("Dairy"),
                ),
                Tab(
                  text: ("Meat"),
                ),
              ],
            ),
            Container(
              height: 700,
              child: TabBarView(children: [
                itemTile(),
                itemTile(),
                itemTile(),
                itemTile(),
              ]),
            )

            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height*0.9,
            //   child: itemTile(),
            // )
          ],
        ),
      )),
    );
  }
}
