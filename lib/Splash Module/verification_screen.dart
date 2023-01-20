import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/Splash%20Module/UsernameEmailPassword.dart';
import 'package:grocery/Splash%20Module/login_screen.dart';
// import 'numericButton.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height - 20;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
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
          Container(
            height: 46.h,
            width: 170.w,
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          Text(
            'We have sent you a \nverification code',
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff06161C),
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Please enter your verification code',
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff979899),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              width: 330.w,
              child: Padding(
                padding: const EdgeInsets.only(right: 8, left: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OtpInputBox(),
                    OtpInputBox(),
                    OtpInputBox(),
                    OtpInputBox(),
                    OtpInputBox(),
                    OtpInputBox(),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // ),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // ),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // ),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // ),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // ),
                    // Container(
                    //   height: 1,
                    //   width: 40,
                    //   color: Colors.grey,
                    // )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 344.w,
            height: 53.h,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => bottomNavigationBar()),
                //     (route) => false);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UsernameEmailPassword()),
                    (route) => false);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => bottomNavigationBar()));loginScreen
              },
              child: Text(
                'Continue',
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xff23AA49),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
          Container(
            width: 344.w,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'By clicking "Continue" you are agreeing to our ',
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA9A9AA),
                    ),
                  ),
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OtpInputBox extends StatelessWidget {
  const OtpInputBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45.w,
      height: 50.h,
      child: TextField(
        textAlign: TextAlign.center,
        autofocus: true,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
          hintStyle: TextStyle(color: Colors.black, fontSize: 24.0),
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
