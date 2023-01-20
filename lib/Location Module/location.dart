import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/Message/chatScreen.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class locationScreen extends StatefulWidget {
  const locationScreen({Key? key}) : super(key: key);

  @override
  State<locationScreen> createState() => _locationScreenState();
}

class _locationScreenState extends State<locationScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(33.768051, 72.360703),
    zoom: 14.4746,
  );
  List<Marker> _marker = [];
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.normal,
              myLocationEnabled: false,
              compassEnabled: false,
              markers: Set<Marker>.of(_marker),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              left: 15,
              top: 10,
              child: Container(
                height: 44,
                width: 44,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: InkWell(
                  onTap: () => Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => bottomNavigationBar()),
                      (Route route) => false),
                  child: Icon(
                    Icons.arrow_back,
                    color: Color(0xff06161C),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              bottom: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: DraggableScrollableSheet(
                  builder: (BuildContext context,
                      ScrollController scrollController) {
                    return SingleChildScrollView(
                      child: Container(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          height: 583,
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                            ),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: screenHeight * 0.008,
                                      width: screenWidth * 0.17,
                                      decoration: BoxDecoration(
                                          color: Color(0xffE0E0E0),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    // SizedBox(width: screenWidth*0.1,),
                                    Text(
                                      'On the way',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 24,
                                        color: Color(0xff06161C),
                                      ),
                                    ),
                                    Container(
                                      height: 42,
                                      padding: EdgeInsets.only(
                                          top: 12,
                                          bottom: 12,
                                          right: 16,
                                          left: 16),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xffF1F1F5)),
                                          borderRadius:
                                              BorderRadius.circular(67)),
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: BoxDecoration(),
                                              child: Icon(
                                                Icons.access_time_filled,
                                                color: Colors.green,
                                                size: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              '10 Min',
                                              style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12,
                                                  color: Color(0xff06161C)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.27,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Order placed',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff23AA49)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 4,
                                            width: 106,
                                            decoration: BoxDecoration(
                                              color: Color(0xff23AA49),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.27,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'On the way',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff979899)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 4,
                                            width: 106,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                  begin: Alignment.topRight,
                                                  end: Alignment.bottomLeft,
                                                  colors: [
                                                    Color(0xffE0E0E0),
                                                    Color(0xff23AA49)
                                                  ]),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: screenWidth * 0.27,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Delivered',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff979899)),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 4,
                                            width: 106,
                                            decoration: BoxDecoration(
                                              color: Color(0xffE0E0E0),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 44,
                                          height: 44,
                                          child: CircleAvatar(
                                            backgroundColor: Color(0xff6A8071),
                                            backgroundImage: AssetImage(
                                                'assets/profile.png'),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Your delievery hero',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff979899)),
                                            ),
                                            Text(
                                              'Abdulmalik Qasim',
                                              style: GoogleFonts.dmSans(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 44,
                                          width: 44,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF3F5F7),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          ChatScreen()));
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              // width: 36,
                                              // height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                // color: Color(0xff23AA49),
                                              ),
                                              child: Icon(
                                                Icons.chat_sharp,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xff6A8071),
                                          backgroundImage: AssetImage(
                                              'assets/circle_vector.png'),
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Store',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff979899)),
                                          ),
                                          Text(
                                            'Insta Grocery Store',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 0.5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 23,
                                        height: 20,
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.location_on_sharp,
                                          color: Colors.green,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 17,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Your place',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff979899)),
                                          ),
                                          Text(
                                            'Queens Road London',
                                            style: GoogleFonts.dmSans(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
