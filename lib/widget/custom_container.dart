import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

 final Widget image;
  final String title;
 final TextStyle style;



  const CustomContainer({Key? key, required this.image, required this.title, required this.style,}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(const Radius.circular(10)),
              border: Border.all(color: const Color(0xffADB5BD), width: 0.6)
        ),
        child: Column(
          children: [
            const SizedBox(height: 8,),
            image,
            const SizedBox(height: 7.8,),
            Text(title,

            )
          ],
        ),
      ),
    );
  }
}
