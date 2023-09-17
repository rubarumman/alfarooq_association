
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Auth/new_account_screen.dart';
import 'package:alfarooq_association/View/Profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';

class ForGetPasswordScreen extends StatelessWidget {
  const ForGetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    body: SingleChildScrollView(
      child: Column(children: [
         Padding(
              padding: const EdgeInsets.fromLTRB(8.0,30,8,15),
              child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 
                  Text("إعادة تعيين كلمة مرور",style: TextStyle(
                    color: Colors.black,
                    fontSize: Sizes.width(context)*0.05),),
                    SizedBox(width: 10,),
                  IconButton(icon:Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                    Navigator.pop(context);
                  },),
                ],),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,100,8,0),
              child: Container(
                width: Sizes.width(context)*0.7,
                height: Sizes.height(context)*0.15,
                // color: Colors.amber,
                child: Text("ادخل بريدك الإلكتروني وسيتم تزويدك بكلمة مرور جديدة" ,maxLines: 2,textAlign: TextAlign.center,style: TextStyle(fontSize: Sizes.width(context)*0.05),),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(8.0,40,8,40),
            //   child: Edit_profileWidget(hinttext: "البريد الإلكتروني",name: 'assets/images/mail.png',),
            // ),


            ButtonWidget(data: "إرسال", onPressed: (){}),

            Row(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
              InkWell(
                onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>NewAccountScreen()));

                },
                child: Text("  إنشاء الحساب",style: TextStyle(
                          color: Colors.blue,
                          fontSize: Sizes.width(context)*0.04,
                        decoration: TextDecoration.underline)),
              ),
                    
                    Text("ليس لديك حساب ؟ ",style: TextStyle(fontSize: Sizes.width(context)*0.04),),
                 
            ],)

      ],),
    ),

    );
  }
}