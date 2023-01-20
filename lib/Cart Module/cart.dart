import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Cart%20Module/checkoutwidget.dart';
import 'package:grocery/Cart%20Module/viewProductWidget.dart';
import 'package:grocery/constants/constants.dart';
import 'package:grocery/yourOrders/yourOrders.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class cartScreen extends StatefulWidget {
  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  List a = [
    "https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144206/pexels-photo-144206.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144206/pexels-photo-144206.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144206/pexels-photo-144206.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144206/pexels-photo-144206.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];
  List b = [
    'Potato',
    'Onion',
    'Tomato ',
    'Potato',
    'Onion',
    'Tomato ',
    'Potato',
    'Onion',
    'Tomato ',
    'Potato',
    'Onion',
    'Tomato ',
  ];
  List c = [
    "2 Items, 6\£",
    "5 Items, 8\£",
    "2 Items, 4\£",
    "2 Items, 6\£",
    "5 Items, 8\£",
    "2 Items, 4\£",
    "2 Items, 6\£",
    "5 Items, 8\£",
    "2 Items, 4\£",
    "2 Items, 6\£",
    "5 Items, 8\£",
    "2 Items, 4\£",
  ];
  List D = [
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
    "Walmart",
  ];
  List d = [
    "2",
    "4",
    "6",
    "2",
    "4",
    "6",
    "2",
    "4",
    "6",
    "2",
    "4",
    "6",
  ];
  var orders;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Container(
            // color: Colors.black12,
            // height: MediaQuery.of(context).size.height*0.2,
            height: 30.h,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Cart",
                  style: GoogleFonts.dmSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => YourOrders(),
                      ),
                    );
                  },
                  child: Container(
                    width: 100.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.add_chart,
                              size: 15,
                              color: Colors.black,
                            ),
                            Text(
                              "Orders",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.blue,
                // margin: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 169,
                child: ListView.builder(
                  itemCount: a.length,
                  itemBuilder: (context, index) {
                    return Container(
                      // margin: EdgeInsets.only(bottom: 24),
                      // padding: EdgeInsets.only(left: 24, right: 24),
                      // padding: EdgeInsets.only(top: 25),
                      // color: Colors.blue,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                              vertical: 6,
                            ),
                            child: Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 4,
                                      offset: Offset(
                                          1, 3) // changes position of shadow
                                      ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: InkWell(
                                  onTap: () {
                                    print('object');

                                    showMaterialModalBottomSheet(
                                      shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                      context: context,
                                      builder: (context) => ViewProductWidget(),
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        // onTap: () {
                                        //   print('object');

                                        //   showMaterialModalBottomSheet(
                                        //     shape: OutlineInputBorder(
                                        //       borderRadius: BorderRadius.only(
                                        //         topLeft: Radius.circular(30),
                                        //         topRight: Radius.circular(30),
                                        //       ),
                                        //       borderSide: BorderSide.none,
                                        //     ),
                                        //     context: context,
                                        //     builder: (context) =>
                                        //         ViewProductWidget(),
                                        //   );
                                        // },
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // margin: EdgeInsets.only(top: 20),
                                              // width: MediaQuery.of(context).size.width*0.2,
                                              // height: MediaQuery.of(context).size.height*0.1,
                                              height: 60.h,
                                              width: 60.w,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  // color: Colors.blue,
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          a[index]),
                                                      fit: BoxFit.fill)),
                                            ),
                                            SizedBox(width: 10.w),
                                            Container(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    b[index],
                                                    style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                  Text(
                                                    c[index],
                                                    style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Deliver to 39 Bloomsbury Cl",
                                                    style: GoogleFonts.dmSans(
                                                      fontWeight:
                                                          FontWeight.w100,
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade200,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.delete_outline,
                                              size: 25,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image.asset("assets/undraw_empty_cart_co35.png"),
                    Text(
                      "Add items to start a cart",
                      style: GoogleFonts.dmSans(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 38.0),
                      child: Text(
                        "When you add items from a store, Your cart will appear here.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bottomNavigationBar(),
                          ),
                        );
                      },
                      child: Container(
                        height: 45.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff23AA49)),
                        child: Center(
                            child: Text(
                          "Start Shopping",
                          style: GoogleFonts.dmSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 110,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                  Text(
                    "£100",
                    style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.89,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {
                  showMaterialModalBottomSheet(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    context: context,
                    builder: (context) => CheckoutWidget(),
                  );
                },
                child: Center(
                  child: Text(
                    "Checkout",
                    style: GoogleFonts.dmSans(color: Colors.white),
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
