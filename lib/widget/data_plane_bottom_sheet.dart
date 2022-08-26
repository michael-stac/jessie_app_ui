import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data_container.dart';

class DataPlaneBottomSheet extends StatelessWidget {
  const DataPlaneBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            backgroundColor: Colors.white,
            builder: (context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 176),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffC4C4C4),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        alignment: Alignment.center,
                        width: 40,
                        height: 7.06,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Plan",
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff323232)),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              DataCustomCard(
                                title: '₦200.00',
                                subtext: '200MB',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: DataCustomCard(
                                  title: '₦3,000',
                                  subtext: '300MB',
                                ),
                              ),
                              DataCustomCard(
                                title: '₦300.00',
                                subtext: '350MB',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: DataCustomCard(
                                  title: '₦750MB',
                                  subtext: '₦500.00',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              DataCustomCard(
                                title: '₦200.00',
                                subtext: '200MB',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: DataCustomCard(
                                  title: '₦3,000',
                                  subtext: '300MB',
                                ),
                              ),
                              DataCustomCard(
                                title: '₦300.00',
                                subtext: '350MB',
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: DataCustomCard(
                                  title: '₦750MB',
                                  subtext: '₦500.00',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            });
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xffD0DAE4),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 142, vertical: 17),
          child: Text(
            "Pay",
            style: GoogleFonts.nunito(
                fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
