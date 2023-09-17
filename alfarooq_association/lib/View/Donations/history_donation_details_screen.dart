import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:flutter/material.dart';

class HistoryDonationDetailsScreen extends StatelessWidget {
  const HistoryDonationDetailsScreen({super.key,required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
     final _scaffoldKey = GlobalKey<ScaffoldState>();
     return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body:SingleChildScrollView(
        child: Column(children: [
     AppbarWidget(scaffoldKey: _scaffoldKey, text: 'تفاصيل الكفالة'),
        Padding(
           padding: const EdgeInsets.fromLTRB(8.8,8,8,25),
           child: Container(width: Sizes.width(context),
            height: Sizes.height(context)*0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
           ),
         ),
    
         DividerWidget(text: "تفاصيل الكفالة",)  ,
         Padding(
           padding: const EdgeInsets.all(15),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text(" كفالة طالب يتيم",style: TextStyle(fontSize: Sizes.width(context)*0.045),),
            Text(" :  نوع الكفالة ",style: TextStyle(fontSize: Sizes.width(context)*0.045,fontWeight: FontWeight.w500))
           ],),
         ),
         Divider(color: Colors.black,),
            Padding(
           padding: const EdgeInsets.all(15),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("  40 د.أ",style: TextStyle(fontSize: Sizes.width(context)*0.045),textDirection: TextDirection.rtl,),
            Text(" :  المبلغ",style: TextStyle(fontSize: Sizes.width(context)*0.045,fontWeight: FontWeight.w500))
           ],),
         ),
          Divider(color: Colors.black,),
               Padding(
           padding: const EdgeInsets.all(15),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text("   6 أشهر",style: TextStyle(fontSize: Sizes.width(context)*0.045),textDirection: TextDirection.rtl,),
            Text(": مدة إنتهاء الكفالة  ",style: TextStyle(fontSize: Sizes.width(context)*0.045,fontWeight: FontWeight.w500))
           ],),
         ),
         DividerWidget(text:"معلومات اليتيم",)  ,
         Padding(
           padding: const EdgeInsets.all(15),
           child: Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("محمود عبيدة جعفر العبيدات",style: TextStyle(fontSize: Sizes.width(context)*0.045)),
              SizedBox(width: Sizes.width(context)*0.02,),
            Image.asset("assets/images/Vector.png"),
                 
           ],),
         ),

          Padding(
           padding: const EdgeInsets.all(15),
           child: Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("14 سنة",textDirection: TextDirection.rtl,style: TextStyle(fontSize: Sizes.width(context)*0.045)),
              SizedBox(width: Sizes.width(context)*0.02,),
            Icon(Icons.cake_outlined,color: MyColors.green,size: Sizes.width(context)*0.08,),
                 
           ],),
         ),
            Padding(
           padding: const EdgeInsets.all(15),
           child: Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                 flex: 1,
                child: Text("تدير جمعية الفاروق الخيرية مركزيين صحيين شاملين يقدما خدماتهم للايتام مجانا والمجتمع المحلي باسعار رمزية وعلى مدار 16 ساعة.",textDirection: TextDirection.rtl,style: TextStyle(fontSize: Sizes.width(context)*0.04),maxLines: 2,)),
              SizedBox(width: Sizes.width(context)*0.02,),
              Image.asset("assets/images/family 1.png")
                 
           ],),
         ),

        ])));
  }
}