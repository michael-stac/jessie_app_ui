import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/custom_container.dart';
import 'home.dart';

class CryptoTrade extends StatefulWidget {
  const CryptoTrade({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<CryptoTrade>
    with SingleTickerProviderStateMixin {
  final TextEditingController controller = TextEditingController();
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
                            child: Text("Internet Subscription",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                )),
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
                        color: const Color(0x80d4d6dd),
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
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
                            text: 'Cabel',
                          ),
                          Tab(
                            icon: null,
                            text: 'Internet',
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
                                  horizontal: 25, vertical: 30),
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
                                    height: 15,
                                  ),
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
                                      DataContainer(
                                        image: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.53, vertical: 30),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/destv.png"),
                                          ),
                                        ),
                                      ),
                                      DataContainer(
                                        image: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.53, vertical: 30),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/gotv.png"),
                                          ),
                                        ),
                                      ),
                                      DataContainer(
                                        image: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.53,
                                              vertical: 18.36),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/star.png"),
                                          ),
                                        ),
                                      ),
                                      DataContainer(
                                        image: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.53, vertical: 30),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/show.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    "Enter User ID",
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
                                        hintText: ' User  ID',
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
                                              color: Color(0xffADB5BDC),
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Select Plan ",
                                        style: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xffADB5BD)),
                                      ),
                                      Text(
                                        "View all plans",
                                        style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xffC4C4C4)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: const [
                                      ContainersBox(
                                        title: '₦1,850.00',
                                        subtext: '',
                                        subtitle: 'DStv Padi N1,850',
                                      ),
                                      ContainersBox(
                                        title: '₦2300.00',
                                        subtext: 'DStv French Touch',
                                        subtitle: 'Add-on N2,300',
                                      ),
                                      ContainersBox(
                                        title: '₦2500.00',
                                        subtext: 'DStv HDPVR Access',
                                        subtitle: ' Service N2,500',
                                      ),
                                      ContainersBox(
                                        title: '₦2500.00',
                                        subtext: 'DExtraView',
                                        subtitle: 'Access N2,500',
                                      )
                                    ],
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
                                  horizontal: 25, vertical: 30),
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
                                    height: 15,
                                  ),
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
                                                vertical: 18.36),
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/smile.png"),
                                            ),
                                          ),
                                        ),
                                      ),
                                      DataContainer(
                                        image: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 19.53,
                                              vertical: 18.36),
                                          child: Image(
                                            image: AssetImage(
                                                "assets/images/spec.png"),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  Text(
                                    "Enter User ID",
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
                                        hintText: ' User  ID',
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
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Select Plan ",
                                        style: GoogleFonts.nunito(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xffADB5BD)),
                                      ),
                                      Text(
                                        "View all plans",
                                        style: GoogleFonts.nunito(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300,
                                            color: const Color(0xffC4C4C4)),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.82),
                                        child: Containers(
                                          title: '₦300.00',
                                          subtext: '2.5GB',
                                          subtitle: 'FlexiDaily',
                                        ),
                                      ),
                                      Containers(
                                        title: '₦300.00',
                                        subtext: '1GB',
                                        subtitle: 'FlexiDaily',
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.82),
                                        child: Containers(
                                          title: '₦300.00',
                                          subtext: '2.5GB',
                                          subtitle: 'FlexiDaily',
                                        ),
                                      ),
                                      Containers(
                                        title: '₦₦500.00',
                                        subtext: '1GB',
                                        subtitle: 'Flexiweekly',
                                      )
                                    ],
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

class Containers extends StatelessWidget {
  final String title;
  final String subtext;
  final String subtitle;

  const Containers({
    Key? key,
    required this.title,
    required this.subtext,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15.45),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff323232),
                    fontFamily: 'Nuntio'),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(subtext,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff323232),
                      fontFamily: 'Nuntio')),
              const SizedBox(
                height: 6,
              ),
              Center(
                  child: Text(subtitle,
                      style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff323232),
                          fontFamily: 'Nuntio'))),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainersBox extends StatelessWidget {
  final String title;
  final String subtext;
  final String subtitle;

  const ContainersBox({
    Key? key,
    required this.title,
    required this.subtext,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 17),
          child: Column(
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff323232),
                    fontFamily: 'Nuntio'),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(subtext,
                  style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff323232),
                      fontFamily: 'Nuntio')),
              const SizedBox(
                height: 6,
              ),
              Center(
                  child: Text(subtitle,
                      style: const TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff323232),
                          fontFamily: 'Nuntio'))),
            ],
          ),
        ),
      ),
    );
  }
}
