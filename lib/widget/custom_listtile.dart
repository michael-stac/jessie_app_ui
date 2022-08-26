import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final Widget trailing;
  final String title;
  final String  leading;
  const CustomTile({Key? key, required this.trailing, required this.title, required this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Color(0xffADB5BD), width: 0.6)
      ),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: Color(0xff000000)),),
        trailing: trailing,
        leading: Container(
            color: const Color(0xffF4F7FD),
            child: Container(
              color: Color(0xffF4F7FD),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Text(leading),
                )))
      ),
    );
  }
}
