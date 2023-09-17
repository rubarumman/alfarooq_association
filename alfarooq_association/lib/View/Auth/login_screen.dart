

import 'package:alfarooq_association/Controller/Login/login_controller.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/textfield_widget.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Auth/forget_password_screen.dart';
import 'package:alfarooq_association/View/Auth/new_account_screen.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final loginCtr = context.read<LoginController>();
    final formkey=GlobalKey<FormState>();
    return  WillPopScope(
      onWillPop: () async{
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
          child:  Form(
                key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,50,8,10),
                  child: Center(
                    child: Image.asset("assets/images/mainlogo.png",
                    width: Sizes.width(context)*0.5,)),
                ),
                Container(
                  width: Sizes.width(context)*0.9,
                  height: Sizes.height(context)*0.12,
                 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("جمعية الفاروق الخيرية لرعاية الأيتام",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Sizes.width(context)*0.05,
                      color: Colors.black),),
                    Text(" ترحب بكم ",
                    style: TextStyle(
                      fontSize: Sizes.width(context)*0.05,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor))
                  ]),
                ),
                 
                 TextFormFieldWidget(hintText: "البريد الالكتروني ",icon: Icons.alternate_email,fillColor: MyColors.white, mycontroller: emailController,),
                  TextFormFieldWidget(hintText: " كلمة المرور ",icon: Icons.lock,fillColor: MyColors.white,
                  mycontroller: passwordController,
                ),
    
                 Padding(
                   padding: const EdgeInsets.only(left:20.0),
                   child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ForGetPasswordScreen()));
                        },
                        child: Text("هل نسيت كلمة المرور ؟",
                                         style: TextStyle(color:Theme.of(context).primaryColor,
                                          decoration: TextDecoration.underline,),),
                      )],),
                 ) ,
                 
                 ButtonWidget(data: "تسجيل الدخول",onPressed: () {
                   if(formkey.currentState!.validate()){
            
                    loginCtr.loginRequest(emailController.text, passwordController.text,(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                   });}
                 },),
    
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
              ],
            ),
          ),
        )),
      ),
    );
  }
}



