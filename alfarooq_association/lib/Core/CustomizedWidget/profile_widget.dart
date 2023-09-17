// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Core/sizes.dart';
import 'package:flutter/material.dart';

class profileWidget extends StatelessWidget {
   profileWidget({
    super.key,
    required this.name,
    required this.text
  });
String name;
String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.all(15),
     child: ListTile(
      
      trailing: Image.asset(name),
      title: Text(text,textDirection: TextDirection.rtl,
      style: TextStyle(fontSize: Sizes.width(context)*0.05),),
     ),
            );
  }
}