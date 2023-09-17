// ignore_for_file: deprecated_member_use

import 'package:alfarooq_association/Controller/ProjectDetails/project_details_controller.dart';
import 'package:alfarooq_association/Controller/Projects/project_controller.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Projects/Contribute_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';

class ProjectDetailsScreen extends StatelessWidget {
   ProjectDetailsScreen({super.key,required this.image,required this.title,required this.prc});

 final String image;
 final String title;
 final String prc;
  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
        
        child:   Consumer<ProjectDetailsController>(
          builder: (context, ProjectDetailsController, _) {
             final projectDModel = ProjectDetailsController.projectDetailsModel;
        
       return  Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text:"تفاصيل المشروع"),

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
           padding: const EdgeInsets.all(8.0),
           child: Text("تدير جمعية الفاروق الخيرية مركزيين صحيين شاملين يقدما خدماتهم للايتام مجانا والمجتمع المحلي باسعار رمزية وعلى مدار 16 ساعة عمل يوميا وهما مركز الفاروق الطبي في اربد ومركز الامارات الطبي في لواء بني عبيد ويحتويان على احدث الاجهزة المتطورة الطبية والمخبرية وكادر من 60 موظف وموظفة ذو خبرة وكفاءة عالية . تأسس مركز الفاروق عام 1993 م ويراجع المراكز ما يقارب 300 الف مراجع سنويا من المجتمع المحلي في محافظة اربد .الخدمات التي تقدمها المراكز :",maxLines: 9,textDirection: TextDirection.rtl,),

         ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: Sizes.width(context),
              height: Sizes.height(context) *0.15,
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
              child: Column(children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Text("نسبة التبرعات",style: TextStyle(fontSize: Sizes.width(context)*0.05),),
                  
                 ],),

               ),
                  Row(children: [
                         Padding(
           padding: EdgeInsets.all(4),
           child: new LinearPercentIndicator(
             barRadius: Radius.circular(15),
             isRTL: true,
             backgroundColor: Colors.grey[200],
             width: MediaQuery.of(context).size.width - 60,
             // animation: true,
             lineHeight: 10.0,
             animationDuration: 2000,
               percent: double.parse(projectDModel
                                    .data!.percentage
                                    .toString()
                                    .substring(0, 1)) /
                                100,
             // center: Text(listproject[index].prc),
             linearStrokeCap: LinearStrokeCap.roundAll,
             progressColor: MyColors.green,
           ),
         ),
         Text("${projectDModel.data!.percentage.toString()}",style: TextStyle(color: MyColors.green),)
                      ],),
              ],),
            ),
          ),
             SizedBox(height: Sizes.statusBar(context),),
          Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  DetailsWidget(text1: "الفئة المستفيدة", text2: "الفئة المستفيدة"),
                DetailsWidget(text1: "إجمالي مبلغ المشروع" ,text2:"2,500 د.أ" ,),
      
          ],),
     

            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,20),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                    DetailsWidget(text1:"مدة التنفيذ", text2: "يوم واحد"),
                  DetailsWidget(text1: "مكان التنفيذ" ,text2: projectDModel.data!.address.toString(),),
                  
                      ],),
            ),
           
           ButtonWidget(data: "تبرع الآن", onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ContributeScreen()));})

             
          ]);})));
  }
}

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({
    super.key,
    required this.text1,
    required this.text2
  });

  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(width: Sizes.width(context)*0.45,
      height: Sizes.height(context)*0.18,
     
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text(text1,style: TextStyle(color: MyColors.green,fontSize: Sizes.width(context)*0.045),),
        Text(text2,style: TextStyle(fontSize: Sizes.width(context)*0.045),)
      ],),
    );
  }
}