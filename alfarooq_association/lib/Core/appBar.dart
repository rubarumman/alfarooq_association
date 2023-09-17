
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required this.text
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;
 final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.fromLTRB(8.0,40,8,0),
    child: Container(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         IconButton(icon: Icon(Icons.arrow_back_ios),onPressed: () {
           Navigator.pop(context);
          
         },),
        Text(text,style: TextStyle(
          color: Colors.black,
          fontSize: Sizes.width(context)*0.05),),
          InkWell(
            onTap: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            child: Image.asset("assets/images/Group 185.png")),
      ],),
    ),
          );
  }
}