import 'package:flutter/material.dart';

class DataCustomCard extends StatelessWidget {
  final String title;
  final  String subtext;

  const DataCustomCard({
    Key? key, required this.title, required this.subtext,

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
              Text(title, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500, fontFamily: 'Nuntio'),),
              SizedBox(height: 5,),
              Text(subtext, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: 'Nuntio')),
            ],
          ),
        ),
      ),
    );
  }
}