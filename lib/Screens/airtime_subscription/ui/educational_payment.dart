import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/custom_container.dart';
import '../../../widget/custom_listtile.dart';

class EducationalPayment extends StatefulWidget {
  const EducationalPayment({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<EducationalPayment>
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
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff016CBA),
      body: Container(
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
                              child: Text("Educational Payments",
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
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(
                          20.0) //                 <--- border radius here
                      ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0x80d4d6dd),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(
                                20.0) //                 <--- border radius here
                            ),
                      ),
                      child: TabBar(
                        indicator: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(
                                  20.0) //                 <--- border radius here
                              ),
                        ),
                        indicatorColor: Colors.white,
                        labelColor: const Color(0xff016CBA),
                        labelStyle: GoogleFonts.nunito(
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        unselectedLabelColor: const Color(0xffC4C4C4),
                        controller: _controller,
                        tabs: const [
                          Tab(
                            icon: null,
                            text: 'WAEC',
                          ),
                          Tab(
                            icon: null,
                            text: 'JAMB',
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _controller,
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select Payment Method",
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
                                      CustomContainer(
                                        image: Image(
                                          image: AssetImage(
                                              "assets/images/naira.png"),
                                        ),
                                        title: "Naria Wallet",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Color(0xff323232)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19),
                                        child: CustomContainer(
                                          image: Image(
                                            image: AssetImage(
                                                "assets/images/bitcoin.png"),
                                          ),
                                          title: "BTC Wallets",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff323232)),
                                        ),
                                      ),
                                      CustomContainer(
                                        image: Image(
                                          image: AssetImage(
                                              "assets/images/tether.png"),
                                        ),
                                        title: "USDT Wallet",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff323232)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Exam Type",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffC4C4C4)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 16),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            border: Border.all(
                                                color: const Color(0xffADB5BD),
                                                width: 0.6)),
                                        child: Row(
                                          children: [
                                            Text(
                                              "WASSCE / GCE ",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff323232)),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 53),
                                              child: Icon(
                                                Icons.radio_button_off,
                                                color: Color(0xffADB5BD),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffADB5BD),
                                                  width: 0.6)),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Result checking PIN  ",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff323232)),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 53),
                                                child: Icon(
                                                  Icons.radio_button_off,
                                                  color: Color(0xffADB5BD),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text("Enter Phone Number",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffADB5BD))),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const CustomTile(
                                    title: 'Enter Phone Number',
                                    trailing: Image(
                                        image: AssetImage(
                                            "assets/images/contact.png")),
                                    leading: '+234',
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    "Enter  Email Address",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  const SizedBox(height: 14),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xffC4C4C4)),
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: ' Email Address',
                                        helperStyle: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000)),
                                        hintStyle: const TextStyle(
                                          color: Color(0xff0000004),
                                        ),
                                        suffixIcon: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                        ),
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
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Amount",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
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
                                            hintText: '1,800.00',
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
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Quantity",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xffC4C4C4)),
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: ' ',
                                        helperStyle: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000)),
                                        hintStyle: const TextStyle(
                                          color: Color(0xff0000004),
                                        ),
                                        suffixIcon: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                        ),
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
                                  const SizedBox(
                                    height: 55,
                                  ),
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
                                        "Pay",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Select Payment Method",
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
                                      CustomContainer(
                                        image: Image(
                                          image: AssetImage(
                                              "assets/images/naira.png"),
                                        ),
                                        title: "Naria Wallet",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 12,
                                            color: Color(0xff323232)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 19),
                                        child: CustomContainer(
                                          image: Image(
                                            image: AssetImage(
                                                "assets/images/bitcoin.png"),
                                          ),
                                          title: "BTC Wallets",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff323232)),
                                        ),
                                      ),
                                      CustomContainer(
                                        image: Image(
                                          image: AssetImage(
                                              "assets/images/tether.png"),
                                        ),
                                        title: "USDT Wallet",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff323232)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Exam Type",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffC4C4C4)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 16),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(10)),
                                            border: Border.all(
                                                color: const Color(0xffADB5BD),
                                                width: 0.6)),
                                        child: Row(
                                          children: [
                                            Text(
                                              "WASSCE / GCE ",
                                              style: GoogleFonts.nunito(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      const Color(0xff323232)),
                                            ),
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 53),
                                              child: Icon(
                                                Icons.radio_button_off,
                                                color: Color(0xffADB5BD),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12, horizontal: 16),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                              border: Border.all(
                                                  color:
                                                      const Color(0xffADB5BD),
                                                  width: 0.6)),
                                          child: Row(
                                            children: [
                                              Text(
                                                "Result checking PIN  ",
                                                style: GoogleFonts.nunito(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    color: const Color(
                                                        0xff323232)),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 53),
                                                child: Icon(
                                                  Icons.radio_button_off,
                                                  color: Color(0xffADB5BD),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text("Enter Phone Number",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xffADB5BD))),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  const CustomTile(
                                    title: 'Enter Phone Number',
                                    trailing: Image(
                                        image: AssetImage(
                                            "assets/images/contact.png")),
                                    leading: '+234',
                                  ),
                                  const SizedBox(height: 30),
                                  Text(
                                    "Enter  Email Address",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w300,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  const SizedBox(height: 14),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xffC4C4C4)),
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: ' Email Address',
                                        helperStyle: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000)),
                                        hintStyle: const TextStyle(
                                          color: Color(0xff0000004),
                                        ),
                                        suffixIcon: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                        ),
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
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Amount",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
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
                                                hintText: '4,700.00',
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
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Select Quantity",
                                    style: GoogleFonts.nunito(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xffADB5BD)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TextFormField(
                                      style: const TextStyle(
                                          color: Color(0xffC4C4C4)),
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                      decoration: InputDecoration(
                                        hintText: ' ',
                                        helperStyle: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xff000000)),
                                        hintStyle: const TextStyle(
                                          color: Color(0xff0000004),
                                        ),
                                        suffixIcon: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                        ),
                                        contentPadding:
                                            const EdgeInsets.all(20),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xffADB5BD),
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide.none

                                           ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 55,
                                  ),
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
                                        "Pay",
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
