import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';

import 'ui/home.dart';
import '../../widget/custom_listtile.dart';


class AirtimeToCash extends StatefulWidget {
  const AirtimeToCash({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<AirtimeToCash>
    with SingleTickerProviderStateMixin {
  bool isLoading = false;
  int val = -1;
  bool isBtc = false;
  bool isNaira = false;
  String referral = '';
  final List<String> errors = [];
  Color border = const Color(0xffADB5BD);

  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller =  TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff016CBA),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              color: const Color(0xff016CBA),
              height: 130,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(left: 30),
                                child: Align(
                                    alignment: Alignment.centerLeft,
                                    child:  Icon(
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
                              child: Text("Airtime to Cash",
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft:  Radius.circular(20.0),
                          topRight:  Radius.circular(
                              20.0) //                 <--- border radius here
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Provider",
                            style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffADB5BD)),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.53),
                                child: DataContainer(
                                  image: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 19.53,
                                        vertical: 8.64),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/mtn.png"),
                                    ),
                                  ),
                                ),
                              ),
                              DataContainer(
                                image: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.53,
                                      vertical: 8.64),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/9mobile.png"),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.33),
                                child: DataContainer(
                                  image: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 19.53,
                                        vertical: 8.64),
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/airtel.png"),
                                    ),
                                  ),
                                ),
                              ),
                              DataContainer(
                                image: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 19.53,
                                      vertical: 8.64),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/glo.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30.2,),
                          const CustomTile(
                            title: 'Enter Sender’s Phone Number',
                            trailing: Image(
                                image: AssetImage(
                                    "assets/images/contact.png")),
                            leading: '+234',
                          ),
                          const SizedBox(height: 30,),
                          const CustomTiles(
                            title: 'Enter Sender’s Phone Number',
                            leading: '+234',
                          ),
                          const SizedBox(height: 30,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10)),
                                border: Border.all(
                                    color: const Color(0xffADB5BD),
                                    width: 0.6)),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xffC4C4C4)),
                                      keyboardType:
                                      TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        contentPadding:
                                        const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintText: 'Input Amount',
                                        helperStyle: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black26),
                                        hintStyle: const TextStyle(
                                          color: Color(0xffC4C4C4),
                                        ),
                                        enabledBorder:
                                        const OutlineInputBorder(
                                            borderSide:
                                            BorderSide.none),
                                        focusedBorder:
                                        const OutlineInputBorder(
                                            borderSide:
                                            BorderSide.none),
                                      ),
                                    )),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade50,
                                      borderRadius:
                                      const BorderRadius.only(
                                          topRight:
                                          Radius.circular(10),
                                          bottomRight:
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 23, vertical: 21),
                                    child: Text(
                                      "NG",
                                      style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.green),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 35,),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10)),
                                border: Border.all(
                                    color: Colors.orange.shade50,
                                    width: 0.6)),
                            child: ListTile(

                              leading: Icon(Icons.not_interested_rounded, color: Colors.orange.shade50,),
                              title: Text("Minimum Amount - NGN 100.00",
                                style: GoogleFonts.nunito(fontSize: 12,  color: const Color(0xff323232)),
                              ),
                              subtitle: Text("Maximum Amount - NGN 100,000.00",
                                style: GoogleFonts.nunito(fontSize: 12,  color: const Color(0xff323232)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 60,),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(
                              color: Color(0xffD0DAE4),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 142, vertical: 17),
                              child: Text(
                                "Continue",
                                style: GoogleFonts.nunito(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                            ),
                          ),




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


class CustomTiles extends StatelessWidget {
  final String title;
  final String  leading;
  const CustomTiles({Key? key,required this.title, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all( Radius.circular(10)),
          border: Border.all(color: const Color(0xffADB5BD), width: 0.6)
      ),
      child: ListTile(
          title: Text(title, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color:  Color(0xff000000)),),
          leading: Container(
              color: const Color(0xffF4F7FD),
              child: Container(
                  color: const Color(0xffF4F7FD),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(leading),
                  )))
      ),
    );
  }
}