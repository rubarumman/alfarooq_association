import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body: SingleChildScrollView(child: Column(
        children: [
          AppbarWidget(scaffoldKey: _scaffoldKey, text: 'تواصل معنا'),
          SizedBox(height: Sizes.statusBar(context),),
           Stack(
            children: [   
              Image.asset("assets/images/contact_us.png"),
                 Positioned(
                  top: 65,
                  left: 120,
                  child: Image.asset("assets/images/info@alfarouqsociety.org.png")),
              ],  
           ),
           Padding(
      padding: const EdgeInsets.fromLTRB(0,30,0,0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Expanded(child: Divider(thickness: 1,
       color: Colors.grey,
       endIndent: 10,)),
        CircleAvatar(backgroundColor: MyColors.gold,child: Icon(Icons.location_on,color: Colors.white,),),

       Expanded(child: Divider(
         thickness: 1,
         indent: 10,
         color: Colors.grey,)),
      ],),
    ),
          SizedBox(height: Sizes.statusBar(context),),
       DataWidget(text1: " : عنوان الجمعية ",text2: "الاردن – اربد – المدخل الشرقي لمخيم اربد  ",),
     
       DataWidget(text1: " : مدرسة الفاروق", text2: "الاردن – اربد – الحي الشمالي – قرب المجمع الشمالي"),
     
       SizedBox(height: Sizes.statusBar(context),),
     DataWidget(text1: ": مركز الفاروق الطبي ", text2: " الاردن – اربد – المدخل الشرقي لمخيم اربد"),
       SizedBox(height: Sizes.statusBar(context),),
       DataWidget(text1: ": مركز الحصن الطبي", text2: " الاردن – اربد -الحصن – المدخل الجنوبي لمخيم الحصن"),

               Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Expanded(child: Divider(thickness: 1,
       color: Colors.grey,
       endIndent: 10,)),
        CircleAvatar(backgroundColor: MyColors.gold,child: Icon(Icons.phone,color: Colors.white,),),

       Expanded(child: Divider(
         thickness: 1,
         indent: 10,
         color: Colors.grey,)),
      ],),
    ),
     
     DataWidget(text1: ":موبايل", text2: " 0785010021"),
      SizedBox(height: Sizes.statusBar(context),),
      DataWidget(text1: ":هاتف ارضي", text2: " +9627275902 "),
       DataWidget(text1: ":فاكس ", text2: "+962577275970"),
            SizedBox(height: Sizes.statusBar(context),),
            DataWidget(text1: ": ص . ب", text2: "150275"),
             Padding(
      padding: const EdgeInsets.fromLTRB(0,20,0,0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Expanded(child: Divider(thickness: 1,
       color: Colors.grey,
       endIndent: 10,)),
       CircleAvatar(backgroundColor: MyColors.gold,child: Icon(Icons.email_outlined,color: Colors.white,),),
       Expanded(child: Divider(
         thickness: 1,
         indent: 10,
         color: Colors.grey,)),
      ],),
    ),

      DataWidget(text1: ":البريد الكتروني", text2: " info@alfarouqsociety.org"),
                  SizedBox(height: Sizes.statusBar(context),),

        ],
      )),
    );
  }
}


class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
    required this.text1,
    required this.text2
  });
 final String text1;
 final String text2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     child: Column( mainAxisAlignment: MainAxisAlignment.center,
       children: [Text(text1,style: TextStyle(color: MyColors.green,fontSize: Sizes.width(context)*0.04),),
       Text(text2)],
     ),
    );
  }
}