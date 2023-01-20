import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Item%20Module/item.dart';
import 'package:grocery/store/NearbyStore_model.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  var rating;

  List<NearbyStores> titles = [
    NearbyStores(
      'Bell Pepper Black',
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                SizedBox(height: 5.h),
                //  ================================= cards ==================
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-1.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-1.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-2.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-1.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-2.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-2.PNG',
                ),
                CustomCard(
                  title: 'Bell Pepper Black',
                  desription:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec ornare massa. Aenean maximus molestiesemper dictum mi. ",
                  ImagePath: 'assets/Capture-1.PNG',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({
    required this.title,
    required this.desription,
    required this.ImagePath,
  });

  final String title;
  final String desription;
  final String ImagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => itemScreen(),
          ),
        );
      }),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
        child: Container(
          // height: 133.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 4,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
                child: Row(
                  children: [
                    Container(
                      height: 120.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent.shade100,
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            ImagePath,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title.toUpperCase(),
                            style: GoogleFonts.dmSans(
                                color: Colors.black,
                                fontSize: 19.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              SmoothStarRating(
                                  allowHalfRating: false,
                                  onRatingChanged: (v) {
                                    // rating = v;
                                    // setState(() {});
                                  },
                                  starCount: 5,
                                  rating: 4,
                                  size: 15.0,
                                  filledIconData: Icons.star,
                                  halfFilledIconData: Icons.blur_on,
                                  color: Colors.orange,
                                  borderColor: Colors.orange,
                                  spacing: 0.0),
                              Text(
                                " (20)",
                                style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            desription,
                            style: GoogleFonts.dmSans(
                                color: Colors.black54,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w200),
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
      ),
    );
  }
}
