import 'package:flutter/material.dart';
import 'package:get/get.dart' hide FormData;
import 'package:google_fonts/google_fonts.dart';

import '../../../widget/amount_container.dart';
import '../../../widget/custom_container.dart';
import 'home.dart';

class ElectrickPayment extends StatefulWidget {
  const ElectrickPayment({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<ElectrickPayment>
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
                                child: Text("Electricity Bill",
                                    style: GoogleFonts.nunito(
                                      textStyle: const TextStyle(
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
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(
                          20.0) //                 <--- border radius here
                      ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
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
                              image: AssetImage("assets/images/naira.png"),
                            ),
                            title: "Naria Wallet",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Color(0xff323232)),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 19),
                            child: CustomContainer(
                              image: Image(
                                image: AssetImage("assets/images/bitcoin.png"),
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
                              image: AssetImage("assets/images/tether.png"),
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
                        "Select Meter Type",
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffC4C4C4)),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 16),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: const Color(0xffADB5BD),
                                    width: 0.6)),
                            child: Row(
                              children: [
                                Text(
                                  "Prepaid ",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff323232)),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 53),
                                  child: Icon(
                                    Icons.radio_button_off,
                                    color: Color(0xffADB5BD),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 16),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(
                                      color: const Color(0xffADB5BD),
                                      width: 0.6)),
                              child: Row(
                                children: [
                                  Text(
                                    "Postpaid  ",
                                    style: GoogleFonts.nunito(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff323232)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 53),
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
                      Text(
                        "Select Provider",
                        style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xffADB5BD)),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      SingleChildScrollView(
                        child: Row(
                          children: const [
                            DataContainer(
                              image: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.53, vertical: 30),
                                child: Image(
                                  image: AssetImage("assets/images/phd.png"),
                                ),
                              ),
                            ),
                            DataContainer(
                              image: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26, vertical: 29),
                                child: Image(
                                  image: AssetImage("assets/images/k.png"),
                                ),
                              ),
                            ),
                            DataContainer(
                              image: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19.53, vertical: 30),
                                child: Image(
                                  image: AssetImage("assets/images/ekdc.png"),
                                ),
                              ),
                            ),
                            DataContainer(
                              image: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 24, vertical: 28),
                                child: Image(
                                  image: AssetImage("assets/images/acd.png"),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 34.2,
                      ),
                      Text(
                        "Select  Amount",
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: const Color(0xffADB5BD)),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          AmountContainer(
                            title: '₦1,000',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: AmountContainer(
                              title: '₦2,000',
                            ),
                          ),
                          AmountContainer(
                            title: '₦5,000',
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: AmountContainer(
                              title: '₦10,000',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 33),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                color: const Color(0xffADB5BD), width: 0.6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: TextFormField(
                              style: const TextStyle(color: Color(0xffC4C4C4)),
                              keyboardType: TextInputType.emailAddress,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                hintText: 'Input Amount ',
                                helperStyle: GoogleFonts.nunito(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black26),
                                hintStyle: const TextStyle(
                                  color: Color(0xffC4C4C4),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide.none),
                              ),
                            )),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10))),
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
                        height: 55,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: Color(0xffD0DAE4),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
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
            ))
          ],
        ),
      ),
    );
  }
}

class OptionContainer extends StatefulWidget {
  const OptionContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<OptionContainer> createState() => _OptionContainerState();
}

class _OptionContainerState extends State<OptionContainer> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
        child: Row(
          children: [
            RadioListTile(
              title: const Text("Female"),
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
