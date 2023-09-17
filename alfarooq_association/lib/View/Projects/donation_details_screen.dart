// ignore_for_file: unused_local_variable

import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:alfarooq_association/View/Orphans/orphan_screen.dart';
import 'package:flutter/material.dart';

class DonationDetailsScreen extends StatelessWidget {
   DonationDetailsScreen({super.key,required this.image,required this.title});
   final String image;
   final String title;
  @override
  Widget build(BuildContext context) {
    List<information> lstinfo=[
      information(name: " محمد احمد", old: " 20 سنة", Gender: "ذكر", address: "اربد-الحي الشرقي", guaranted: false),
      information(name: " محمود عبيدة", old: "  31 سنة", Gender: "ذكر", address:  "اربد- الرمثا", guaranted: true),
     information(name: " علي محمد", old: " 41 سنة", Gender: "ذكر", address:  "اربد- الرمثا", guaranted: true),

    ];
   final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
   
        child: Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text:"تفاصيل الكفالة"),

          Padding(
           padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
           child: Container(width: Sizes.width(context),
            height: Sizes.height(context)*0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)
            ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Text(title,style: TextStyle(fontSize: Sizes.width(context)*0.05),)
           ],),
         ),

          Padding(
           padding: const EdgeInsets.all(5.0),
           child: Text("تدير جمعية الفاروق الخيرية مركزيين صحيين شاملين يقدما خدماتهم للايتام مجانا والمجتمع المحلي باسعار رمزية وعلى مدار 16 ساعة عمل يوميا وهما مركز الفاروق الطبي في اربد ومركز الامارات الطبي في لواء بني عبيد ويحتويان على احدث الاجهزة المتطورة الطبية والمخبرية وكادر من 60 موظف وموظفة ذو خبرة وكفاءة عالية .",maxLines: 9,textDirection: TextDirection.rtl,),

         ),

          DividerWidget(text: "الطلاب الأيتام",)  ,

           Container(width: Sizes.width(context),
           height: Sizes.height(context) *0.8,
           child: ListView.builder(
            
            itemCount: lstinfo.length,
            itemBuilder: (BuildContext context ,int index){
            return   Padding (
             padding: const EdgeInsets.all(8.0),
             child: Container(width: Sizes.width(context),
             height: Sizes.height(context)*0.38,
             decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
                  boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
                  ],
             ),
             child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                    width: Sizes.width(context)*0.4,
                    height: Sizes.height(context) *0.15,
                    // color: Colors.blue,
                    child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Image.asset("assets/images/jordan 1.png"),
                       Text(lstinfo[index].address,style: TextStyle(fontSize: Sizes.width(context)*0.045),)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Sizes.width(context)*0.5,
                      height: Sizes.height(context) *0.15,
                      // color: Colors.amberAccent,
                      child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                        RowWidget(text1:lstinfo[index].name ,text2: ": الإسم ",),
                  
                        RowWidget(text1: lstinfo[index].old, text2: ": العمر  "),
                         RowWidget(text1: lstinfo[index].Gender, text2: ": الجنس ")   
                         
                      ],),
                    ),
                  ),
                   
                 ],),
                 Divider(thickness: 1,),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(8.0,8,8,0),
                   child: Text("الأسرة : هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى.",maxLines: 3,textDirection: TextDirection.rtl,),
                 ),
                 Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
         backgroundColor: MyColors.green,
       shape:  
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
  
         fixedSize: Size(Sizes.width(context)*0.35, Sizes.height(context)*0.07),),
                      onPressed: lstinfo[index].guaranted==true?null :(){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>OrphanScreen(name: lstinfo[index].name,)));
                      }, 
                    child: Center(child: Text(lstinfo[index].guaranted==true ?"مكفول":"إكفل",
                    style: TextStyle(color: Colors.white,
                    fontSize: Sizes.width(context)*0.045),)),

                    
                 
                  ),

                                   ElevatedButton(
                                    
                      style: ElevatedButton.styleFrom(
                        disabledBackgroundColor: MyColors.grey,
         backgroundColor: MyColors.gold,
       shape:  
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
  
         fixedSize: Size(Sizes.width(context)*0.35, Sizes.height(context)*0.07),),
                      onPressed: lstinfo[index].guaranted==true?null : (){}, 
                    child: 
                   Image.asset("assets/images/cart 1.png"),
                  )
                 ],)
               ],
             ),

                     ),
           );
           }),
           ),
           SizedBox(height: Sizes.statusBar(context),)
          ])));
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.text1,
    required this. text2
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row( mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text(text1),
      SizedBox(width: Sizes.width(context)*0.01,),
      Text(text2,style: TextStyle(fontSize: Sizes.width(context)*0.04
      ,color: MyColors.green),),
                     
    ],);
  }
}


class information{
  final String name;
  final String old;
  final String Gender;
  final String address;
  final bool guaranted;
  information({required this.name,required this.old,required this.Gender,required this.address,required this.guaranted});
}