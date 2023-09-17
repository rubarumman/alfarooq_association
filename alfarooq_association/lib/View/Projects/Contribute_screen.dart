// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/textfield_widget.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:alfarooq_association/View/Projects/payment_method_screen.dart';
import 'package:flutter/material.dart';

class ContributeScreen extends StatefulWidget {
   ContributeScreen({super.key});

  @override
  State<ContributeScreen> createState() => _ContributeScreenState();
}

class _ContributeScreenState extends State<ContributeScreen> {

  int? currentindex;
  int? price;
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<int> list=[
      10,
      20,
      30,
      40,
      50 
    ];
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
   
        child: Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text:"تفاصيل المشروع"),

         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Text(" : حدد المبلغ الذي تريد التبرع به ",
               style: TextStyle(
                fontSize: Sizes.width(context)*0.05
               ),),
             ],
           ),
         ),
         Container(
          width: Sizes.width(context),
          height: Sizes.height(context)*0.5,
         
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context,int index){
             return   InkWell(
              onTap: () {
                setState(() {
                 currentindex=index;
                 price=list[index];
                });
              },
               child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                         width: Sizes.width(context)*0.9,
                         height: Sizes.height(context)*0.068,
                         decoration: BoxDecoration(
                          color: currentindex==index?MyColors.green:MyColors.white,
                borderRadius: BorderRadius.circular(10),
               border: Border.all(color: MyColors.gold)
                         ),
                         child: Center(child: Text(" ${list[index]} د.أ ",
                         textDirection: TextDirection.rtl,
                         textAlign: TextAlign.center,style: TextStyle(
                fontSize: Sizes.width(context)*0.05
                         ),)),
                        ),
                      ),
             );
          }),
         ),
          SizedBox(height: Sizes.height(context)*0.03,),
          DividerWidget(text: "أو",)  ,
          
          TextFormFieldWidget(hintText: "أدخل مبلغ آخر", mycontroller:myController ,),

          ButtonWidget(data: "طرق الدفع", onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentMethodScreen()));
          })
          ])));
  }
}