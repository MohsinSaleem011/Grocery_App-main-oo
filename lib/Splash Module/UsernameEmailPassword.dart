import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Splash%20Module/Registeration_LoginScreen.dart';
import 'package:grocery/Splash%20Module/verification_screen.dart';

class UsernameEmailPassword extends StatefulWidget {
  const UsernameEmailPassword({super.key});

  @override
  State<UsernameEmailPassword> createState() => _UsernameEmailPasswordState();
}

class _UsernameEmailPasswordState extends State<UsernameEmailPassword> {
  final myController = TextEditingController();

  final TextEditingController usernamecontroller = TextEditingController();
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
                height: 100.h,
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
                  controller: usernamecontroller,
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(210, 243, 243, 237),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    // labelText: 'User Name',
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 75, 70, 70)),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
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
                    hintText: 'Password',
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
