// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Controller/Profile/profile_controller.dart';
import 'package:alfarooq_association/Controller/Projects/project_controller.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/About/about_screen.dart';
import 'package:alfarooq_association/View/About/contact_us.dart';
import 'package:alfarooq_association/View/Donations/history_of_donation_screen.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:alfarooq_association/View/News/new_screen.dart';
import 'package:alfarooq_association/View/Profile/profile_screen.dart';
import 'package:alfarooq_association/View/Projects/Project_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  
  Widget build(BuildContext context) {
  final ProfileCtr=context.read<ProfileController>();
  final ProjContr = context.read<ProjectsController>();


    return Drawer(
      backgroundColor: Colors.white,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
         
          padding: EdgeInsets.zero,
          children: [
         DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/alfarooq.png" ,),
          ),
        ),
        ListTileDrawerWidget(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));}, text: "الرئيسية",),
        Divider(thickness: 1,color: MyColors.grey,),
       ListTileDrawerWidget(
            onTap: () {ProfileCtr.getUserInfo(() {Navigator.push(context,MaterialPageRoute(builder: (context) => ProfileScreen()));});},text: " الصفحة الشخصية",),
        Divider(thickness: 1,color: MyColors.grey,),
        ListTileDrawerWidget(
        onTap: ()  {ProjContr.getProjects(() {Navigator.push(context,MaterialPageRoute(builder: (context) => ProjectScreen()));});},text: " المشاريع",),     
        Divider(thickness: 1,color: MyColors.grey,),
        ListTileDrawerWidget(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsScreen()));}, text: "أخبار وفعاليات ",),
        Divider(thickness: 1,color: MyColors.grey,),
        ListTileDrawerWidget(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryDonationScreen()));}, text: " سجل التبرعات والكفالات ",),
        Divider(thickness: 1,color: MyColors.grey,),
        ListTileDrawerWidget(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutScreen()));}, text: "من نحن ",),
        Divider(thickness: 1,color: MyColors.grey,),
        ListTileDrawerWidget(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsScreen()));}, text: "اتصل بنا ",),
        Divider(thickness: 1,color: MyColors.grey,),    

           ] ),
      ),
    );
  }
}

class ListTileDrawerWidget extends StatelessWidget {
   ListTileDrawerWidget({
    super.key,
    required this.onTap,
    required this.text
  });
Function()? onTap;
final String? text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(text!,style: TextStyle(color: Colors.black,
      fontSize: Sizes.width(context)*0.05),),
      onTap:onTap ,
    );
  }
}