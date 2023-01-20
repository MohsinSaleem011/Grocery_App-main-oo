import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/checkoutWidget2.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ViewProductWidget extends StatelessWidget {
  const ViewProductWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.h),
          Center(
            child: Divider(
              height: 2.h,
              thickness: 4,
              endIndent: 160,
              indent: 160,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 15.h),
          Container(
            height: 45.h,
            width: 120.w,
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
          SizedBox(height: 3.h),
          Text(
            "View",
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 20,
                  left: 20,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery Info: ',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          "Product Name: ",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                        Text(
                          "Bell Pepper Red",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          "Store Name: ",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                        Text(
                          "Joe doe",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black),
                        )
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Text(
                          "Location: ",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black54),
                        ),
                        Text(
                          "Bell Pepper Red",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 18,
              right: 22,
              left: 25,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Time',
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.black),
                ),
                Text(
                  '15-30 Min(s)',
                  style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.black54,
            endIndent: 22,
            indent: 24,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 15,
                  right: 15,
                  bottom: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1. Bell Pepper Red',
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: IntrinsicHeight(
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              SizedBox(width: 5.w),
                              VerticalDivider(thickness: 2),
                              SizedBox(width: 5.w),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                showMaterialModalBottomSheet(
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      borderSide: BorderSide.none,
                    ),
                    context: context,
                    builder: (context) => CheckOutWidget2());
              },
              child: Container(
                height: 54,
                width: 302,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff23AA49)),
                child: Center(
                  child: Text(
                    "Next",
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
    );
  }
}
