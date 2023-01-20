import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class orderTiles extends StatefulWidget {
  const orderTiles({Key? key}) : super(key: key);

  @override
  State<orderTiles> createState() => _orderTilesState();
}

class _orderTilesState extends State<orderTiles> {
  List a = [
    "https://images.pexels.com/photos/4871159/pexels-photo-4871159.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1639565/pexels-photo-1639565.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1633578/pexels-photo-1633578.jpeg?auto=compress&cs=tinysrgb&w=600",

  ];
  List b = [
    'Halal',
    'Fast Food',
    'Breakfast & brunch ',

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
              margin: EdgeInsets.only(bottom: 24),
              // padding: EdgeInsets.only(left: 24, right: 24),
              // padding: EdgeInsets.only(top: 25),
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                                      D[index],
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color(0xffFF324B),
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
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>()));
                                  },
                                  child: Icon(Icons.navigate_next_sharp,size: 30,))
                            ],
                          )
                          // Container(
                          //   height: MediaQuery.of(context).size.height * 0.1,
                          //   width: MediaQuery.of(context).size.width * 0.25,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: [
                          //       Row(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Container(
                          //             height: 30,
                          //             width: 30,
                          //             decoration: BoxDecoration(
                          //               color: Color(0xffF3F5F7),
                          //               shape: BoxShape.circle,
                          //             ),
                          //             child: Center(
                          //                 child: Icon(
                          //               Icons.remove,
                          //               color: Colors.black,
                          //             )),
                          //           ),
                          //           Container(
                          //             child: Text(
                          //               d[index],
                          //               style: GoogleFonts.dmSans(
                          //                   fontSize: 18,
                          //                   fontWeight: FontWeight.w700),
                          //             ),
                          //           ),
                          //           Container(
                          //             height: 30,
                          //             width: 30,
                          //             decoration: BoxDecoration(
                          //               color: Colors.green,
                          //               shape: BoxShape.circle,
                          //             ),
                          //             child: Center(
                          //                 child: Icon(
                          //               Icons.add,
                          //               color: Colors.white,
                          //             )),
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey,
                  )
                ],
              ),
            );
          }),
    );
  }
}
