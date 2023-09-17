import 'package:alfarooq_association/Controller/Register/register_Controller.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Auth/login_screen.dart';
import 'package:alfarooq_association/View/Profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewAccountScreen extends StatelessWidget {
  const NewAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    final fullNameCon = TextEditingController();
    final phoneCon = TextEditingController();
    final emailController = TextEditingController();
    final placeCon = TextEditingController();
     final jobCon = TextEditingController();
    final passCon = TextEditingController();
    final confirmPassCon = TextEditingController();
    final regiCtr = context.read<RegisterController>();
    

    return  Scaffold(
      key: _scaffoldKey,
      
      body: SingleChildScrollView(
        child: Column(children: [
  Padding(
              padding: const EdgeInsets.fromLTRB(8.0,30,8,15),
              child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 
                  Text("حساب جديد",style: TextStyle(
                    color: Colors.black,
                    fontSize: Sizes.width(context)*0.05),),
                    SizedBox(width: 10,),
                  IconButton(icon:Icon(Icons.arrow_forward_ios_rounded),onPressed: () {
                    Navigator.pop(context);
                  },),
                ],),
              ),
            ),
              //  SizedBox(height: Sizes.statusBar(context),),
              Edit_profileWidget(hinttext: "الإسم الكامل",name: 'assets/images/Vector.png',mycontroller:fullNameCon),
               Edit_profileWidget(hinttext: "رقم الهاتف",name: 'assets/images/phone.png',mycontroller:phoneCon),
                Edit_profileWidget(hinttext: "البريد الإلكتروني",name: 'assets/images/mail.png',mycontroller:emailController),
                 Edit_profileWidget(hinttext: "مكان السكن",name: 'assets/images/address.png',mycontroller:placeCon),
                  Edit_profileWidget(hinttext: "الوظيفة",name: 'assets/images/Mask group.png',mycontroller:jobCon),
              Edit_profileWidget(hinttext: "كلمة المرور",name: 'assets/images/password.png',mycontroller:passCon),
              Edit_profileWidget(hinttext: "تأكيد كلمة المرور",name: 'assets/images/password.png',mycontroller:confirmPassCon),

              ButtonWidget(data: "إنشاء حساب", onPressed: (){
                   regiCtr.registerRequest(fullNameCon.text,phoneCon.text,emailController.text,placeCon.text,jobCon.text,passCon.text,confirmPassCon.text,
                    (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                   });
              })
        ],),
      ),
    );
  }
}