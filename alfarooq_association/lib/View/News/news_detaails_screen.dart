import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/sizes.dart';

import 'package:flutter/material.dart';

class NewsDetailsScreen extends StatelessWidget {
  final String image;
  final String tittle;
  final String date;
  const NewsDetailsScreen({super.key,required this.image,required this.tittle,required this.date});

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text: "تفاصيل الخبر",),
        
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            width: Sizes.width(context),
            height: Sizes.height(context)*0.3,
            // color: Colors.red,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(image,),fit: BoxFit.cover)
            ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/alfarooq.png",width: 40,),
            Text(date ,textDirection: TextDirection.rtl,),
                 
           ],),
         ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(children: [
            Expanded(child: Text(tittle,textDirection: TextDirection.rtl,))
           ],),
         ),

         Padding(
           padding: const EdgeInsets.all(8),
           child: Container(
            width: Sizes.width(context),
            height: Sizes.height(context)*0.2,
            child: Text("جمعية_الفاروق الخيرية لرعاية الأيتام وبالتعاون مع جمعية #الآفاق الخيرية للتعليم وتنفيذ جمعية #الإبداع_المهني في الطاقة و أكاديمية #برفكس تم تخريج دورة تدريبية في التمديدات الكهربائية بعنوان ” علمني الصيد ” لمجموعة من الباحثين عن فرص للتأهيل المهني من الايتام المسجلين في الجمعية وذلك يوم الأحد الموافق 4 أيلول 2022 في قاعة الجمعية.",
            maxLines: 9,textDirection: TextDirection.rtl,),
           ),
         )

          ])));
  }
}