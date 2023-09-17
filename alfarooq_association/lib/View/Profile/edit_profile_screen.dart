// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';

import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Profile/profile_screen.dart';

import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final _scaffoldKey = GlobalKey<ScaffoldState>();
     final formkey=GlobalKey<FormState>();
    return Scaffold(
       key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              AppbarWidget(scaffoldKey: _scaffoldKey,text: "الصفحة الشخصية",),
              Padding(
                padding: const EdgeInsets.fromLTRB(15,15,15,20),
                child: Center(child:CircleAvatar(backgroundColor: MyColors.orange,radius: 45,
                child: Image.asset('assets/images/profile.png',width: 40,),)),
              ),
              
              // Edit_profileWidget(hinttext: "الإسم الكامل",name: 'assets/images/Vector.png',),
              //  Edit_profileWidget(hinttext: "رقم الهاتف",name: 'assets/images/phone.png',),
              //   Edit_profileWidget(hinttext: "البريد الإلكتروني",name: 'assets/images/mail.png',),
              //    Edit_profileWidget(hinttext: "مكان السكن",name: 'assets/images/address.png',),
              //     Edit_profileWidget(hinttext: "الوظيفة",name: 'assets/images/Mask group.png',),
                 Padding(
                   padding:  EdgeInsets.only(top:Sizes.height(context)*0.03),
                   child: ButtonWidget(data: "تعديل المعلومات الشخصية", onPressed: (){
                    // if(formkey.currentState!.validate()){
                       showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Center(
                                  child: SingleChildScrollView(
                                    child:  Dialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        height: Sizes.height(context)*0.4,
                                        width: Sizes.width(context),
                                        child: Stack(children: [
                                          Positioned(
                                            top: 10,
                                            right: 10,
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.cancel,
                                                size: 30,
                                                // color: Colors.red,
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ),
                                          Positioned(
                                            top: Sizes.height(context)*0.04,
                                            left: Sizes.width(context)*0.19,
                                            child: Image.asset("assets/images/popup.png",width: 150,
                                           )),
                                            
                                           Positioned(
                                            top: Sizes.height(context)*0.22,
                                          left: Sizes.width(context)*0.13,
                                            child: Text("تم تعديل معلوماتك بنجاح",style: TextStyle(
                                              fontSize: Sizes.width(context)*0.055
                                            ),),),
                                
                                               Positioned(
                                            top: Sizes.height(context)*0.28,
                                           left: 20,
                                            child: Padding(
      padding: const EdgeInsets.fromLTRB(0,15,8.0,15),
      child: ElevatedButton
      (
        style: ElevatedButton.styleFrom(
         backgroundColor: MyColors.green,
       shape:  
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),

    ),
  
         fixedSize: Size(Sizes.width(context)*0.7, Sizes.height(context)*0.07)
        ),
       onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
       },
        child: Text("العودة للصفحة الشحصية",
        style: TextStyle(color: Colors.white,
        fontSize: Sizes.width(context)*0.05),)),
    )),
                                
                                        ]),
                                      ),
                                                      )
                                  ),
                                );});

                      // }
                   }),
                 )
            ],
          ),
        ),
      ),
    );
  }
}

class Edit_profileWidget extends StatelessWidget {
   Edit_profileWidget({
    super.key,
    required this.hinttext,
    required this.name,
    required this.mycontroller,

  });
  final String hinttext;
   String name;
final  mycontroller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
         cursorColor: MyColors.green,
         controller: mycontroller,
            decoration: 
            InputDecoration(
              hintText: hinttext,
          // filled: true,
            hintTextDirection: TextDirection.rtl,
            // fillColor: Colors.white,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
             color: Colors.grey,
      
              ),
              
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
      color: MyColors.grey,
              
              ),
              
             borderRadius: BorderRadius.circular(10)
              
            ),
            suffixIcon: Image.asset(name,color: MyColors.grey,)
      )
      ),
    );
  }
}
