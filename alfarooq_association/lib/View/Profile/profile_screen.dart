// ignore_for_file: must_be_immutable

import 'package:alfarooq_association/Controller/Profile/profile_controller.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/profile_widget.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/View/Profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
        child: 
         Consumer<ProfileController>(
          builder: (context, profileController, _) {
             final profileModel = profileController.profileModel;
             
       return Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text: "الصفحة الشخصية",),
            Padding(
              padding: const EdgeInsets.all(15),
              child:Center(child:CircleAvatar(backgroundColor: MyColors.orange,radius: 45,
              child: Image.asset('assets/images/profile.png',width: 40,),)),
            ),
           
           
          
              profileWidget(name: 'assets/images/Vector.png',text:" محمد احمد علي القصاص",),

            Divider(
              thickness: 1,
            ),

             profileWidget(name: 'assets/images/phone.png',text: profileModel.data!.phone.toString()
             ),
            Divider(
              thickness: 1,
            ),
             profileWidget(name: 'assets/images/mail.png',text:  profileModel.data!.email.toString()
             ),
            Divider(
              thickness: 1,
            ),
             profileWidget(name: 'assets/images/address.png',text:  profileModel.data!.address.toString()),
            Divider(
              thickness: 1,
            ),
            profileWidget(name: 'assets/images/Mask group.png',text:  profileModel.data!.job.toString()),
            Divider(
              thickness: 1,
            ),

            ButtonWidget(data: "تعديل المعلومات الشخصية", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));

            })
        ],);}),
      ),
    );
      }}


