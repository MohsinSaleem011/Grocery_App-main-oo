import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/BottomNavBar/bottomNavBar.dart';
import 'package:grocery/Splash%20Module/Registeration_LoginScreen.dart';
import 'package:permission_handler/permission_handler.dart';

class introScreen extends StatefulWidget {
  const introScreen({Key? key}) : super(key: key);

  @override
  State<introScreen> createState() => _introScreenState();
}

class _introScreenState extends State<introScreen> {
  checkallpermission_opencamera() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      // Permission.phone,
      // Permission.notification,
      // Permission.accessNotificationPolicy,
    ].request();

    // if (statuses[Permission.camera]!.isGranted) {
    //   if (statuses[Permission.microphone]!.isGranted) {
    //     // openCamera();
    //   } else {
    //     // showToast("Camera needs to access your microphone, please provide permission", position: ToastPosition.bottom);
    //   }
    // } else {
    //   // showToast("Provide Camera permission to use camera.", position: ToastPosition.bottom);
    // }
  }
  

  checkpermission_opencamera() async {
    var cameraStatus = await Permission.accessNotificationPolicy.status;
    // var microphoneStatus = await Permission.microphone.status;
    print("111111111111111111");
    print(cameraStatus);
    // print(microphoneStatus);
    //cameraStatus.isGranted == has access to application
    //cameraStatus.isDenied == does not have access to application, you can request again for the permission.
    //cameraStatus.isPermanentlyDenied == does not have access to application, you cannot request again for the permission.
    //cameraStatus.isRestricted == because of security/parental control you cannot use this permission.
    //cameraStatus.isUndetermined == permission has not asked before.

    if (!cameraStatus.isGranted) await Permission.camera.request();

    // if (!microphoneStatus.isGranted) await Permission.microphone.request();

    if (await Permission.camera.isGranted) {
      if (await Permission.microphone.isGranted) {
        // openCamera();
      } else {
        // showToast("Camera needs to access your microphone, please provide permission", position: ToastPosition.bottom);
      }
    } else {
      // showToast("Provide Camera permission to use camera.", position: ToastPosition.bottom);
    }
  }

  checkpermission_phone_logs() async {
    if (await Permission.location.request().isGranted ) {
      print("object if");
      // openPhonelogs();
    } else {
      print("object else");
      // showToast("Provide Phone permission to make a call and view logs.", position: ToastPosition.bottom);
    }
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height - 20;
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            // color: Color.fromARGB(255, 231, 241, 229),
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.4,
                0.6,
                0.9,
              ],
              colors: [
                Colors.white,
                Color.fromARGB(255, 231, 248, 231),
                
                
                Colors.white,
                Colors.white,
              ],
            )
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     Container(
                    //       width: 45,
                    //       height: 39,
                    //       margin: EdgeInsets.only(right: 26),
                    //       decoration: BoxDecoration(
                    //           image: DecorationImage(
                    //               image: AssetImage('assets/leaf1.png'))),
                    //     )
                    //   ],
                    // ),
                    // SizedBox(height: 140.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 43,
                          height: 48,
                          margin: EdgeInsets.only(
                            left: 30,
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/leaf1.png'))),
                        ),                       
                      ],
                    ),
                    // SizedBox(height: 40.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 43,
                          height: 48,
                          margin: EdgeInsets.only(
                            left: 30,
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/leaf2.png'))),
                        ),
                      ],
                    ),
                    Container(
                      height: 300.h,
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.only(top: 545,),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/food.png'),
                              fit: BoxFit.fill)),
                      // child: Text('LOGO HERE',style: TextStyle(fontSize: 36,color: Color(0xff3F2037)),)
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned.fill(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 60),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomNavigationBar()));
                      },
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 202, 198, 198),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                width: 0.3, color: Color(0xff23AA49))),
                        child: Center(
                            child: Text(
                          "Skip",
                          style: GoogleFonts.dmSans(color: Color(0xff23AA49)),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 40),
                                height: 40.h,
                                width: 170.w,
                                child: Image(
                                    image: AssetImage(
                                  'assets/logo.png',
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 1.h),
                    Text(
                      'Get your groceries\n delivered to your home',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.dmSans(
                        color: Color(0xff061616),
                        fontSize: 28.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Text(
                        'The best delivery app in town for delivering your daily fresh groceries',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.dmSans(
                          color: Color(0xff979899),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Container(
                  child: Column(
                    children: [
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Container(
                            width: 200.w,
                            height: 53.h,
                            child: ElevatedButton(
                              onPressed: ()  {
                                // checkallpermission_opencamera();
                                // PermissionStatus microphoneStatus = await Permission.microphone.request();
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: ((context) =>
                                //         Registeration_LoginScreen()),
                                //   ),
                                // );
                                // UsernameEmailPassword loginScreen
                                showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        height: 390.h,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.95,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Allow 'grocero' to use\nyour location & enable\nNotifications?",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.dmSans(
                                                        fontSize: 22.sp,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 15.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "We use it to show you \n nearby stores",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.dmSans(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 30.h,
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Registeration_LoginScreen()));
                                                      },
                                                      child: Text(
                                                        "Allow Once",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Registeration_LoginScreen()));
                                                      },
                                                      child: Text(
                                                        "Allow While Using App",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Divider(
                                                thickness: 1,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        Registeration_LoginScreen()));
                                                      },
                                                      child: Text(
                                                        "Dont Allow",
                                                        style:
                                                            GoogleFonts.dmSans(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.blue,
                                                        ),
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
                                  });
                              },
                              child: Text(
                                'Shop now',
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
                        ),
                      ),
                      // SizedBox(height: 50.h,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 250.h),
            ],
          ))
        ],
      ),
    );
  }
}
