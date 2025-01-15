import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class myshoppingcart extends StatefulWidget {
  const myshoppingcart({super.key});

  @override
  State<myshoppingcart> createState() => _myshoppingcartState();
}

class _myshoppingcartState extends State<myshoppingcart> {
  @override
  Widget build(BuildContext context) {
    List cart = [
      {'Name': "GT Bike", 'Image': "assets/gtbike.png", 'Price': "\$2,599"},
      {'Name': "Helmet", 'Image': "assets/helmet.png", 'Price': "\$125.99"},
      {'Name': "Bottle", 'Image': "assets/bottle.png", 'Price': "\$115.99"}
    ];
    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 44, 59, 1),
      body: Stack(
        children: [
          Positioned(
            top: 300,
            left: -15,
            child: Container(
              height: 597,
              width: 445,
              child: CustomPaint(
                painter: DiagonalPainter(),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 185,
            child: RotatedBox(
              quarterTurns: 1,
              child: Text(
                "EXTREME",
                style: GoogleFonts.allertaStencil(
                    textStyle: const TextStyle(
                        fontSize: 150,
                        color: Color.fromARGB(
                          20,
                          255,
                          255,
                          255,
                        ))),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 18,
            child: Padding(
              padding: const EdgeInsets.only(right: 18),
              child: Row(
                children: [
                  Text(
                    "My Shopping Cart",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 40),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(72, 92, 236, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                      ))
                ],
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      width: 2,
                      color: Color.fromRGBO(255, 255, 255, 0.100),
                    ))),
                    child: Row(
                      children: [
                        Container(
                            height: 108,
                            width: 130,
                            margin: const EdgeInsets.only(bottom: 20),
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurStyle: BlurStyle.outer,
                                      offset: Offset(5, 6),
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      color: Color.fromRGBO(0, 0, 0, 0.25)),
                                  BoxShadow(
                                      blurStyle: BlurStyle.inner,
                                      offset: Offset(6, 6),
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      color: Color.fromRGBO(0, 0, 0, 0.25)),
                                ],
                                border: Border.all(
                                    width: 2,
                                    color: const Color.fromRGBO(
                                        255, 255, 255, 0.100)),
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(colors: [
                                  Color.fromRGBO(53, 63, 84, 0.6),
                                  Color.fromRGBO(34, 40, 52, 0)
                                ])),
                            child: Image.asset(
                              cart[index]['Image'],
                              height: 100,
                              width: 100,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cart[index]['Name'],
                              style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Text(
                                  cart[index]['Price'],
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(55, 182, 233, 1))),
                                ),
                                const SizedBox(
                                  width: 35,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 31,
                                  width: 67,
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            blurStyle: BlurStyle.inner,
                                            offset: Offset(0, 1),
                                            color: Color.fromRGBO(0, 0, 0, 0.5),
                                            blurRadius: 3)
                                      ],
                                      color:
                                          const Color.fromRGBO(30, 30, 30, 0.8),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                          height: 23,
                                          width: 20,
                                          alignment: Alignment.topLeft,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              gradient:
                                                  const LinearGradient(colors: [
                                                Color.fromRGBO(55, 182, 233, 1),
                                                Color.fromRGBO(75, 76, 237, 1)
                                              ])),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Text(
                                              "+",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Colors.white)),
                                            ),
                                          )),
                                      Text(
                                        "1",
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white)),
                                      ),
                                      Container(
                                          height: 23,
                                          width: 20,
                                          alignment: Alignment.topLeft,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              gradient: const LinearGradient(
                                                  colors: [
                                                    Color.fromRGBO(
                                                        255, 255, 255, 0.080),
                                                    Color.fromRGBO(
                                                        195, 195, 195, 0.020)
                                                  ])),
                                          child: IconButton(
                                            onPressed: () {},
                                            icon: Text(
                                              "-",
                                              style: GoogleFonts.poppins(
                                                  textStyle: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromARGB(
                                                          10, 255, 255, 255))),
                                            ),
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 550,
            left: 50,
            child: Text(
              "Your Bag Qualifies for Free Shipping",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(255, 255, 255, 1))),
            ),
          ),
          Positioned(
              top: 580,
              left: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 330,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Color.fromRGBO(0, 0, 0, 0.3)),
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(36, 44, 59, 0.6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          " 6Affg5",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(142, 142, 142, 1))),
                        ),
                        Container(
                          width: 137,
                          height: 44,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Color.fromRGBO(255, 251, 251, 0.059)),
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(55, 182, 233, 1),
                                Color.fromRGBO(75, 76, 237, 1)
                              ])),
                          child: Text(
                            "Apply",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 22,
                                    color: Colors.white)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "\$2,841.99",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery fee",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "0",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "30%",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.white)),
                        ),
                        Text(
                          "\$1,989.37",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Color.fromRGBO(55, 182, 233, 1))),
                        ),
                      ],
                    ),
                  ),
                  Row(children: [
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color.fromRGBO(55, 182, 233, 1),
                                  Color.fromRGBO(72, 92, 236, 1),
                                ])),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                        )),
                    Text(
                      " Check Out",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white)),
                    ),
                  ])
                ],
              )),
        ],
      ),
    );
  }
}

class DiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    Path path1 = Path();
    path1.moveTo(size.width, 0);
    path1.lineTo(0, size.height / 3);
    path1.lineTo(0, size.height);
    path1.lineTo(size.width, size.height);
    path1.close();
    paint.color = const Color.fromRGBO(30, 30, 30, 1);
    canvas.drawPath(path1, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
