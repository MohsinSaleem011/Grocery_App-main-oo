import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Splash%20Module/ForgetPassword.dart';
import 'package:grocery/Splash%20Module/login_screen.dart';
import 'package:grocery/Splash%20Module/verification_screen.dart';

class Registeration_LoginScreen extends StatefulWidget {
  const Registeration_LoginScreen({super.key});

  @override
  State<Registeration_LoginScreen> createState() =>
      _Registeration_LoginScreenState();
}

class _Registeration_LoginScreenState extends State<Registeration_LoginScreen> {
  final myController = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    // controller.dispose();
    // myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height - 20;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
              SizedBox(height: 20.h,),
              Container(
                height: 46.h,
                width: 170.w,
                child: Image(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 344.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color.fromARGB(255, 220, 223, 221),),
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
              SizedBox(height: 20.h,),
              Container(
                width: 344.w,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color.fromARGB(255, 220, 223, 221),),
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
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 75, 70, 70)),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
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
                  },
                  child: Text(
                    'Login',
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff23AA49),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              InkWell(
                onTap: () {
                    Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        ForgetPassword()));
                  },
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                    color: Color(0xff061616),
                    fontSize: 17.sp,
                    // fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
             Container(
                width: 344.w,
                height: 58.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                // height: 46.h,
                // width: 170.w,
                child: Image(
                  image: AssetImage('assets/google.png'),
                ),
              ),
              SizedBox(width: 20.h,),
                      Text(
                        'Login With Google',
                        style: GoogleFonts.dmSans(
                  color: Color(0xff061616),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(210, 243, 243, 237),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Container(
                width: 344.w,
                height: 58.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                // height: 46.h,
                // width: 170.w,
                child: Image(
                  image: AssetImage('assets/facebookNew.png'),
                ),
              ),
              SizedBox(width: 20.h,),
                      Text(
                        'Login With Facebook',
                       style: GoogleFonts.dmSans(
                  color: Color(0xff061616),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(210, 243, 243, 237),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
            Container(
                width: 344.w,
                height: 58.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VerificationScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                // height: 46.h,
                // width: 170.w,
                child: Image(
                  image: AssetImage('assets/appleBlack.png'),
                ),
              ),
              SizedBox(width: 20.h,),
                      Text(
                        'Login With Apple',
                        style: GoogleFonts.dmSans(
                  color: Color(0xff061616),
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w700,
                ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(210, 243, 243, 237),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),   
              SizedBox(height: 20.h,),       
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Color.fromARGB(255, 8, 8, 8),fontSize: 18),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => loginScreen()),
                                    ),
                                  );
                        // Get.to(BottomBar());
                      },
                      child: Text(
                        "Sign Up",
                       style: GoogleFonts.dmSans(
                  color: Color.fromARGB(255, 4, 70, 124),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // void getPhoneNumber(String phoneNumber) async {
  //   PhoneNumber number =
  //       await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'Uk');

  //   setState(() {
  //     this.number = number;
  //   });
  // }
}
