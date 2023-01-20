import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/Cart%20Module/cart.dart';
import 'package:grocery/Home%20Module/home_screen.dart';
import 'package:grocery/NewCode/BrowseScreen/browseScreen.dart';
import 'package:grocery/profile/profile.dart';
import 'package:grocery/yourOrders/yourOrders.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key, key}) : super(key: key);

  // final RouteLogin=true;
  @override
  bottomNavigationBarState createState() => bottomNavigationBarState();
}

class bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    homeScreen(),
    BrowseScreen(),
    cartScreen(),
    // YourOrders(),
    ProfileScreen(),
  ];

  void initState() {
    // TODO: implement initState
    // changeLoginStatus();
    super.initState();
  }

  // changeLoginStatus(){
  //   UserLoginStateHandler.saveUserLoggedInSharedPreference(true);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        onTap: _onTap,
        currentIndex: selectedIndex,
        // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.browser_updated, size: 20),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 20),
            label: "Browse",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, size: 20), label: "Basket"),
          // BottomNavigationBarItem(
          //     icon: Icon(FontAwesomeIcons.boxes, size: 20),
          //     label: "Order"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              label: "Profile"),
        ],
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
