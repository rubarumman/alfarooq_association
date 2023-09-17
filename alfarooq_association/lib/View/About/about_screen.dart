// ignore_for_file: unused_local_variable

import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
      final _scaffoldKey = GlobalKey<ScaffoldState>();

      List<String> lst=[
   "مساعدة الايتام عن طريق الكفالات الشهرية والمساعدات الطارئة عيناً ونقداً",
". تأمين العلاج المجاني للأيتام واسرهم.",
" مساعدة الايتام دراسياً حتى اتمام تعليمهم الجامعي. ",
"تقديم المعونات العينية للأيتام واسرهم.",
" تقديم الخدمات التطوعية للمجتمع المحلي.",
" تدريب الايتام على المهن التي تناسب قدراتهم.",
" توفير فرص العمل الشريف للقادرين على العمل من اسر الايتام.",
" فتح مركز تعليمي للأيتام والمجتمع المحلي… مدارس و مشاغل مهنية .",
      ];
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
               AppbarWidget(scaffoldKey: _scaffoldKey, text: ' من نحن'),
          SizedBox(height: Sizes.statusBar(context),),

          Stack(
            children: [   
              Container(
                height: 200,
                decoration: BoxDecoration(
  color: Color.fromARGB(255, 0, 0, 0),
  image: new DecorationImage(
    fit: BoxFit.cover,
    colorFilter: 
      ColorFilter.mode(Colors.black.withOpacity(0.5), 
      BlendMode.dstATop),
    image: AssetImage("assets/images/about.png")
  ),
),
              ),
              // Image.asset(,opacity:  const AlwaysStoppedAnimation(.5),),
                 Positioned(
                  top: Sizes.height(context)*0.07,
                  left: Sizes.width(context)*0.38,
                  child: CircleAvatar(
                    backgroundColor: MyColors.white,
                    radius: 55,
                    child: Image.asset("assets/images/alfarooq.png",width: 80,),)),
              ],  
           ),

           Row( mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("عن جمعية الفاروق",textDirection: TextDirection.rtl,style: TextStyle(fontSize: Sizes.width(context)*0.05),),
               ),
             ],
           ),
             Row( mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  width: Sizes.width(context)*0.9,
                   child: Text("هي جمعية للعمل الاجتماعي التطوعي, تقوم على خدمة فئة محتاجة محددة من ابناء مجتمعنا المحلي, تأسست في اواخر عام 1991 تحت رقم تسجيل 991 في وزارة التنمية الاجتماعية للعمل على الوصول بحياة أسر الايتام الى مستوى العيش الكريم.",textDirection: TextDirection.rtl,
                   maxLines: 9,
                   style: TextStyle(fontSize: Sizes.width(context)*0.035),),
                 ),
               ),
             ],
           ),
            Row( mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  width: Sizes.width(context)*0.9,
                   child: Text("تعمل جمعية الفاروق الخيرية للأيتام في محافظة اربد وتقع على المدخل الشرقي لمخيم اربد وتغطي انشطتها كافة انحاء المحافظة وتسعى جاهدة لتشمل انشطتها جميع محافظات المملكة.",textDirection: TextDirection.rtl,
                   maxLines:9 ,
                   style: TextStyle(fontSize: Sizes.width(context)*0.035),),
                 ),
               ),
             ],
           ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
                child: Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("تعمل الجمعية على: ",textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: Sizes.width(context)*0.035),),
                  ],
                ),
              ),
           SizedBox(
            height: Sizes.height(context)*0.5,
             child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: lst.length,
              itemBuilder: (BuildContext , int index){
                return  Row(
                
                 children: <Widget>[
                 
                   Expanded(
                     child: Text(lst[index].toString(),textDirection: TextDirection.rtl,style: TextStyle(fontSize: Sizes.width(context)*0.036),),
                   ),
                     Text("• "),
                 ],
               );
             }),
           )
          

          ],
        ),
      ),
    );
  }
}