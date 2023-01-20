import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Message/recievedMessageWidget.dart';
import 'package:grocery/Message/sendMessageWidget.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(width: 10.h,),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                      "assets/profile.png"
                    ),
                  ),
                  SizedBox(width: 10,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Abdulmalik Qasim",
                        style: GoogleFonts.dmSans(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),

                      ),
                      Text(
                        "Online",
                        style: GoogleFonts.dmSans(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey
                        ),),
                    ],
                  ),



                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
           Expanded(
             child: SingleChildScrollView(
               child: Column(
                 children: [
                   SizedBox(height: 10.h,),

                   sendMessageWidget(),
                   SizedBox(height: 30.h,),
                   RecievedMessageWidget(),
                   SizedBox(height: 30.h,),
                   RecievedMessageWidget(),
                   SizedBox(height: 30.h,),
                   sendMessageWidget(),
                   SizedBox(height: 30.h,),
                   RecievedMessageWidget(),
                   SizedBox(height: 30.h,),
                   sendMessageWidget(),
                   SizedBox(height: 30.h,),
                   RecievedMessageWidget(),
                   SizedBox(height: 30.h,),
                   sendMessageWidget(),
                   SizedBox(height: 30.h,),
                   RecievedMessageWidget(),
                   SizedBox(height: 30.h,),
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
