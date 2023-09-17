// ignore_for_file: unused_local_variable

import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Donations/history_donation_details_screen.dart';
import 'package:alfarooq_association/View/Projects/Contribute_screen.dart';
import 'package:flutter/material.dart';

class HistoryDonationScreen
 extends StatelessWidget {
  const HistoryDonationScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  List<Donation> list=[
Donation(image: "assets/images/donation.png",title: "مشروع كفالة الطلاب الأيتام" ,price: " 100د.أ", date: "12 يوليو 2023 م"),
Donation(image: "assets/images/pro1.png",title: "مشروع معالجة الأيتام"  ,price: " 20 د.أ", date: "27 مارس 2023 م"),
Donation(image: "assets/images/donation.png",title: "مشروع كفالة الطلاب الأيتام"  ,price: " 20 د.أ", date: "27 مارس 2023 م"),
  ];
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: MyDrawer(),
      body:SingleChildScrollView(
        child: Column(children: [
     AppbarWidget(scaffoldKey: _scaffoldKey, text: 'سجل التبرعات والكفالات'),
      Container(
        width: Sizes.width(context)*1.0,
        height: Sizes.height(context)*0.75,
        // color: Colors.red,
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (
            BuildContext context, int index) {
        return  InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: 
            (context)=>HistoryDonationDetailsScreen(image: list[index].image, 
            )));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              trailing: Image.asset(list[index].image),
              title: Text(list[index].title,textDirection: TextDirection.rtl,),
              subtitle: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     Text(list[index].date,textDirection: TextDirection.rtl,),
               
              Row(children: [
                Text(list[index].price,style: TextStyle(color: MyColors.green,),textDirection: TextDirection.rtl,),
                Text(' :المبلغ '),
        
              ],)  ,
               
              ],),
            ),
          ),
        );
        })),
      
         ButtonWidget(data: "تبرع الى محفظة الفاروق", onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ContributeScreen()));
         })

        ],),
      )
    );
  }
}

 class Donation {
  String image;
  String title;
  String price;
  String date;
  Donation({required this.image,required this.title,required this.price,required this.date});
 }