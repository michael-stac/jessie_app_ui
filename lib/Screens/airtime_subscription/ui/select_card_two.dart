import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';


class SelectTow extends StatefulWidget {
  const SelectTow ({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<SelectTow >
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
                          Padding(
                            padding: const EdgeInsets.only(right: 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Select Giftcard",
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  )),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [


                                    Column(
                                      children: const [
                                        Image(image: AssetImage("assets/images/Steam.png")),


                                      ],
                                    ),
                                  ],),
                                SizedBox(height: 40,),
                                Text("Select  Currency ",
                                  style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xffADB5BD)),
                                ),
                                SizedBox(height:  15,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                                              child: Image(image: AssetImage("assets/images/US.png")),

                                            ),
                                            Divider(thickness: 0.4, color: Color(0xffADB5BD),),
                                            Text("USD",
                                              style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),

                                            ),
                                            SizedBox(height: 4,)


                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                                              child: Image(image: AssetImage("assets/images/GB.png")),

                                            ),
                                            Divider(thickness: 0.4, color: Color(0xffADB5BD),),
                                            Text("GBP",
                                              style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),

                                            ),
                                            SizedBox(height: 4,)


                                          ],
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                                            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                                              child: Image(image: AssetImage("assets/images/EU.png")),

                                            ),
                                            Divider(thickness: 0.4, color: Color(0xffADB5BD),),
                                            Text("EUR",
                                              style: GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff323232)),

                                            ),
                                            SizedBox(height: 4,)


                                          ],
                                        ),
                                      ),

                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                                      decoration: BoxDecoration(
                                          color: Color(0xffF4F7FD),
                                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                                          border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),

                                      child: Column(
                                        children: [
                                          Text("more",
                                            style: GoogleFonts.nunito(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff323232)),

                                          ),
                                          SizedBox(height: 9.4,),
                                          const Icon(Icons.arrow_downward, color: Color(0xff323232),),
                                          SizedBox(height: 4,)


                                        ],
                                      ),
                                    )

                                  ],
                                ),
                                const SizedBox(height: 30,),
                                Text("Card value ",
                                  style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xffADB5BD)),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10),
                                  child: TextFormField(
                                    style: const TextStyle(
                                        color: Color(0xffC4C4C4)),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: ' Physical Card',
                                      helperStyle: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: const Color(0xff000000)),
                                      hintStyle: const TextStyle(
                                        color: Color(0xff0000004),
                                      ),

                                      suffixIcon: Icon(Icons.arrow_downward,  color: Color(0xff000000)),

                                      contentPadding:
                                      const EdgeInsets.all(20),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffadb5bdc),
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffADB5BD),
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 34,),
                                Text("SSelect Giftcard Type ",
                                  style: GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 14, color: Color(0xffADB5BD)),
                                ),
                                SizedBox(height: 15,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10),
                                  child: TextFormField(
                                    style: const TextStyle(
                                        color: Color(0xffC4C4C4)),
                                    keyboardType: TextInputType.text,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                      hintText: ' Choose card value',
                                      helperStyle: GoogleFonts.nunito(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: const Color(0xff000000)),
                                      hintStyle: const TextStyle(
                                        color: Color(0xff0000004),
                                      ),

                                      suffixIcon: Icon(Icons.arrow_downward,  color: Color(0xff000000)),

                                      contentPadding:
                                      const EdgeInsets.all(20),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffadb5bdc),
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xffADB5BD),
                                            width: 2,
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 38,),
                                Container(
                                  color: Color(0xffF4F7FD),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Card value info',
                                      helperStyle:  GoogleFonts.nunito(fontSize: 14, fontWeight: FontWeight.w400, color: const Color(0xffC4C4C4)),
                                      hintStyle: const TextStyle(color: Color(0xffC4C4C4),),
                                      contentPadding: const EdgeInsets.all(20),
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xff9F9C9C),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(18)
                                      ),

                                      focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                            color: Color(0xff9F9C9C),
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.circular(18)
                                      ),
                                    ),


                                    minLines: 6,
                                    keyboardType: TextInputType.multiline,
                                    maxLines: null,
                                  ),
                                ),
                                const SizedBox(height: 55,),
                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                    color: Color(0xffD0DAE4),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10)),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 142, vertical: 17),
                                    child: Text(
                                      "Pay",
                                      style: GoogleFonts.nunito(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 86,),


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