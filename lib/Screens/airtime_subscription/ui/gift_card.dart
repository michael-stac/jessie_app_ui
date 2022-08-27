import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class GiftCard extends StatelessWidget {
  const GiftCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff016CBA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff016CBA),
        leading: const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
      ),
      body:  Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 39),
        child: Stack(
          children: [
            Column(
              children: [
                Positioned(
                  top: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.02),
                        child: Image(image: AssetImage("assets/images/uni.png")),
                      ),
                      Image(image: AssetImage("assets/images/st.png")),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 60),
                  decoration: const BoxDecoration(
                      color: Color(0xff015A9B),
                      borderRadius: BorderRadius.all(Radius.circular(28))
                  ),
                  child: Column(
                    children: [
                      Text("Your one stop shop for all Giftcards.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 41,),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:  BorderRadius.all(Radius.circular(10))
                          ),
                          child: ListTile(
                            tileColor: Colors.white,
                            leading: const CircleAvatar(
                              child:  Image(image: AssetImage("assets/images/fly.png"),),
                            ),
                            title: Text("Sell Giftcard",
                              style: GoogleFonts.nunito(fontSize: 14, color: const Color(0xff323232), fontWeight: FontWeight.w700),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30,),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:  BorderRadius.all(const Radius.circular(10))
                          ),
                          child: ListTile(
                            tileColor: Colors.white,
                            leading: const CircleAvatar(
                              child: Image(image:  AssetImage("assets/images/atm.png"),),
                            ),
                            title: Text("Buy Giftcard",
                              style: GoogleFonts.nunito(fontSize: 14, color: const Color(0xff323232), fontWeight: FontWeight.w700),
                            ),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                      const SizedBox(height: 60,)

                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );

  }
}

