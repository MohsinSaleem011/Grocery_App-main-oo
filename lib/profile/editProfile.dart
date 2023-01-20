import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  SizedBox(width: 5.h),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 100.h),
                  Text(
                    "Edit Profile",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.dmSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/profile.png"),
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xff23AA49),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Full Name",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    customTextFormField(
                      hintText: 'Micheal Sam',
                      icon: Icons.person_outline,
                      inputType: TextInputType.name,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Phone Number",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    customTextFormField(
                      hintText: '+01 65841542265',
                      icon: Icons.phone_outlined,
                      inputType: TextInputType.number,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Email",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    customTextFormField(
                      hintText: 'michealsam@gmail.com',
                      icon: Icons.mail_outline,
                      inputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      children: [
                        Text(
                          "Address",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    customTextFormField(
                      hintText: 'Kennington, London, UK',
                      icon: Icons.edit_location_sharp,
                      inputType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: 144,
                  decoration: BoxDecoration(
                    color: Color(0xff23AA49),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Center(
                    child: Text(
                      "Save Changes",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customTextFormField extends StatelessWidget {
  customTextFormField({
    required this.hintText,
    required this.icon,
    required this.inputType,
  });

  final String hintText;
  final IconData icon;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.black12),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.green),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.roboto(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 14),
          suffixIcon: Icon(
            Icons.check_circle,
            size: 20,
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0xff23AA49),
          )),
    );
  }
}
