import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
   final TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height - 20;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              SizedBox(
                height: 10.h,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 8),
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
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                height: 46.h,
                width: 170.w,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                      'Recover Password',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        color: Color(0xff061616),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                 SizedBox(
                height: 10.h,
              ),
               Text(
                      'RecoveryLink will be send to your email',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        color: Color.fromARGB(255, 158, 160, 160),
                        fontSize: 20.sp,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                 SizedBox(
                height: 20.h,
              ),
              Container(
                width: 344.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color.fromARGB(255, 220, 223, 221),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Color.fromARGB(255, 75, 70, 70),
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(210, 243, 243, 237),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // labelText: 'User Name',
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 75, 70, 70)),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              
              Container(
                width: 344.w,
                height: 58.h,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bottomNavigationBar()),
                      (route) => false);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Registeration_LoginScreen()));
                  },
                  child: Text(
                    'Recover',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff23AA49),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}