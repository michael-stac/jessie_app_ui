import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';


class SelectCard extends StatefulWidget {
  const SelectCard({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<SelectCard>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  int val = -1;
  bool isBtc = false;
  bool isNaira = false;
  String referral = '';
  final List<String> errors = [];
  Color border = Color(0xffADB5BD);

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff016CBA),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: Color(0xff016CBA),
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Icon(
                                      Icons.arrow_back_ios_new,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Trade Bitcoin",
                                    style: GoogleFonts.nunito(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    )),
                              ),
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(
                              20.0) //                 <--- border radius here
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          new Container(
                            decoration: BoxDecoration(
                              color: Color(0x80d4d6dd),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(
                                      20.0) //                 <--- border radius here
                              ),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Select Gift card",
                                      style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xffADB5BD)),
                                    ),


                                  ],
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                    style: const TextStyle(color: Color(0xffC4C4C4)),


                                    textInputAction: TextInputAction.done,
                                    decoration: InputDecoration(
                                      fillColor: Color(0xffADB5BD),
                                       prefixIcon: Icon(Icons.search),
                                      hintText: 'Search for gift cards ',
                                      hintStyle: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.w400, color: const Color(0xffC4C4C4)),
                                      contentPadding: const EdgeInsets.all(8),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffADB5BD),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffADB5BD),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(8)
                                      ),
                                    ),

                                  ),
                                SizedBox(height: 40,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Apple.png")),
                                        SizedBox(height: 12,),
                                        Text("Apple Universal",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                ],),
                                SizedBox(height: 29,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/itune.png")),
                                        SizedBox(height: 12,),
                                        Text("iTunes",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Google Play.png")),
                                        SizedBox(height: 12,),
                                        Text("Google play",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image(image: AssetImage("assets/images/Steam.png")),
                                        SizedBox(height: 12,),
                                        Text("Steam",
                                          style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),
                                        )

                                      ],
                                    )

                                  ],),
                                SizedBox(height: 29,),

                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );

  }
}