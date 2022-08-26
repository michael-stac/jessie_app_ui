import 'package:flutter/material.dart';

class AmountContainer extends StatelessWidget {
  final String title;

  const AmountContainer({
    Key? key, required this.title,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: const Color(0xffADB5BD), width: 0.6)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15.45),
              child: Text(title, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Nuntio'),),
            )
          ],
        ),
      ),
    );
  }
}