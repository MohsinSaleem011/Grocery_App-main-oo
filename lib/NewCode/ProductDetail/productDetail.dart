import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/constants/constants.dart';

class ProductDetail extends StatefulWidget {
  final String productImage;
  final String prodctName;
  final prodctPrice;

  ProductDetail({
    required this.productImage,
    required this.prodctName,
    required this.prodctPrice,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  var TotalPrice;
  @override
  Widget build(BuildContext context) {
    print('${TotalPrice}');
    print("${numberOfItems}");
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height - 45,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("${widget.productImage}"))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(38.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 24, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            '${widget.prodctName}',
                            style: GoogleFonts.dmSans(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            '£${widget.prodctPrice}',
                            style: GoogleFonts.dmSans(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFF324B),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffF3F5F7),
                              backgroundImage: AssetImage('assets/profile.png'),
                            ),
                          ),
                          SizedBox(width: 11),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Grocer',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xff06161C),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                  children: [
                    Text(
                      'Ginger is flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.',
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979899),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Weight',
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              "250G",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              "500G",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffF1F1F5)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Container(
                            width: 35,
                            height: 35,
                            child: Image(
                              image: AssetImage('assets/organic.PNG'),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  '100%',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff23AA49),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Organic',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff979899),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffF1F1F5)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Container(
                            width: 35,
                            height: 35,
                            child: Image(
                              image: AssetImage('assets/year.PNG'),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  '1 Year',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff23AA49),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Expiration',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff979899),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffF1F1F5)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Container(
                            width: 35,
                            height: 35,
                            child: Image(
                              image: AssetImage('assets/review.PNG'),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Text(
                                      '4.8',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: Color(0xff23AA49),
                                      ),
                                    ),
                                    Text(
                                      ' (256)',
                                      style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        color: Color(0xff979899),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Reviews',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff979899),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 67,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Color(0xffF1F1F5)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Container(
                            width: 35,
                            height: 35,
                            child: Image(
                              image: AssetImage('assets/gram.PNG'),
                            ),
                          ),
                          SizedBox(width: 16),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  '80 kcal',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Color(0xff23AA49),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  '100 Gram',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Color(0xff979899),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            TotalPrice = numberOfItems * widget.prodctPrice;
                            if (numberOfItems > 0) {
                              numberOfItems--;
                              print(numberOfItems);
                            } else {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: Text('Alert'),
                                  content: Text(
                                      'Quantity must be greater than zero'),
                                  actions: [
                                    MaterialButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'OK',
                                          style: TextStyle(color: Colors.blue),
                                        ))
                                  ],
                                ),
                              );
                            }
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Icon(
                          Icons.minimize,
                          color: Color(0xff06161C),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 20,
                      child: Text(
                        '${numberOfItems}',
                        style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          numberOfItems++;
                          print(numberOfItems);
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Color(0xff06161C),
                      ),
                    ),
                  ],
                ),
                TextButton(
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "ADD TO BUCKET",
                      style: GoogleFonts.dmSans(color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
