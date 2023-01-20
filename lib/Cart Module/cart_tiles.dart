import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cartTiles extends StatefulWidget {
  const cartTiles({Key? key}) : super(key: key);

  @override
  State<cartTiles> createState() => _cartTilesState();
}

class _cartTilesState extends State<cartTiles> {
  List a = [
    "https://images.pexels.com/photos/144248/potatoes-vegetables-erdfrucht-bio-144248.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/144206/pexels-photo-144206.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600",

  ];
  List b = [
    'Potato',
    'Onion',
    'Tomato ',

  ];
  List c = [
    "2 Items, 6\£",
    "5 Items, 8\£",
    "2 Items, 4\£",

  ];
  List D = [
    "Walmart",
    "Walmart",
    "Walmart",

  ];
  List d = ["2", "4", "6", "2","3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: a.length,
          itemBuilder: (context, index) {
            return Container(
              // margin: EdgeInsets.only(bottom: 24),
              // padding: EdgeInsets.only(left: 24, right: 24),
              // padding: EdgeInsets.only(top: 25),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Container(
                      // color: Colors.blue,
                      //  padding: EdgeInsets.only(top: 10,),
                      height: 80,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         Row(
                        crossAxisAlignment: CrossAxisAlignment.start
                           ,
                           children: [
                             Container(
                               // margin: EdgeInsets.only(top: 20),
                               // width: MediaQuery.of(context).size.width*0.2,
                               // height: MediaQuery.of(context).size.height*0.1,
                               height: 60,
                               width: 60,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 // color: Colors.blue,
                                   image: DecorationImage(
                                       image: NetworkImage(a[index]),
                                       fit: BoxFit.fill)),
                             ),
                             SizedBox(width: 10,),
                             Container(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(
                                     b[index],
                                     style: GoogleFonts.dmSans(
                                       fontWeight: FontWeight.w700,
                                       fontSize: 17,
                                     ),
                                   ),

                                   Text(
                                     c[index],
                                     style: GoogleFonts.dmSans(
                                       fontWeight: FontWeight.w100,
                                       fontSize: 12,
                                       color: Colors.black,
                                     ),
                                   ),
                                   Text(
                                     "Deliver to 39 Bloomsbury Cl",
                                     style: GoogleFonts.dmSans(
                                       fontWeight: FontWeight.w100,
                                       fontSize: 12,
                                       color: Colors.black,
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                          Row(
                            children: [
                              InkWell(
                              onTap:(){
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateOrRemoveCartItem()));
                              },
                                  child: Icon(Icons.navigate_next_sharp,size: 30,))
                            ],
                          )

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            );
          }),
    );
  }
}
