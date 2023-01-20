import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Splash%20Module/verification_screen.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// import 'numericButton.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  String countryCode = '+44';
  String value = '+234';
  final myController = TextEditingController();
  //
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'UK';
  PhoneNumber number = PhoneNumber(isoCode: 'GB');

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.of(context).size.height - 20;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          Container(
            height: 46.h,
            width: 170.w,
            child: Image(
              image: AssetImage('assets/logo.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: Text(
              // 'Please enter your mobile number',
              "Please enter your name text and something elese wtastsvd",
              textAlign: TextAlign.center,
              style: GoogleFonts.dmSans(
                color: Color(0xff06161C),
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            // 'We will send you a verification code',
            "jhsfgds mfgdhshfg jhdsfhghjdfgdh ",
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              color: Color(0xff979899),
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            width: 344.w,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InternationalPhoneNumberInput(
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    showFlags: true,
                    useEmoji: true),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: OutlineInputBorder(borderSide: BorderSide.none),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
            ),
          ),
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
              // UsernameEmailPassword  VerificationScreen
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

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'Uk');

    setState(() {
      this.number = number;
    });
  }
}
