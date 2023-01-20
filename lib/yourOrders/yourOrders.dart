import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/cart_tiles.dart';
import 'package:grocery/PaymentsScreens/checkout.dart';
import 'package:grocery/Utils/button.dart';
import 'package:grocery/yourOrders/orderTiles.dart';

class YourOrders extends StatefulWidget {
  const YourOrders({Key? key}) : super(key: key);

  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44,
                      width: 44,
                      child: ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.keyboard_arrow_left,
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
                    Text(
                      "Your Orders",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Text("          "),
                  ],
                ),
              ),



              // Container(
              //   height: 550,
              //   child: ListView.builder(
              //     itemCount: 10,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(18.0),
              //         child: Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: [
              //             Row(
              //               children: [
              //                 Container(
              //                   height: 50,
              //                   width: 50,
              //                   decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(10),
              //                       image: DecorationImage(
              //                           fit: BoxFit.fill,
              //                           image: NetworkImage("https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600")
              //                       )
              //                   ),
              //                 ),
              //                 SizedBox(width: 10,),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.start,
              //                   children: [
              //                     Text(
              //                       "Potato",
              //                       style: GoogleFonts.dmSans(
              //                         fontWeight: FontWeight.w700,
              //                         fontSize: 17,
              //                       ),
              //                     ),
              //                     Text(
              //                       "2 Items, \£87.0 ",
              //                       style: GoogleFonts.dmSans(
              //                         fontWeight: FontWeight.w100,
              //                         fontSize: 12,
              //                         color: Colors.black,
              //                       ),
              //                     ),
              //                     Text(
              //                       "07 Sep - completed",
              //                       style: GoogleFonts.dmSans(
              //                         fontWeight: FontWeight.w100,
              //                         fontSize: 12,
              //                         color: Colors.black,
              //                       ),
              //                     ),
              //
              //                   ],
              //                 )
              //               ],
              //             ),
              //             Container(
              //               height: 30,
              //               width: 80,
              //               decoration: BoxDecoration(
              //                 color: Colors.grey.shade200,
              //                 borderRadius: BorderRadius.circular(20),
              //               ),
              //               child:Center(
              //                 child: Text("Reorder"),
              //               )
              //             )
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(

                  children: [SizedBox(height: 100.h,),
                    Image.asset("assets/undraw_Order_delivered_re_v4ab.png"),
                    Text("No order completed yet",style: GoogleFonts.dmSans(fontSize: 20.sp,fontWeight: FontWeight.w700,color:Colors.black),)
                    ,



                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
