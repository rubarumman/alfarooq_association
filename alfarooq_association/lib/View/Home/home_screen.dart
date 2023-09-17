
// ignore_for_file: must_be_immutable, unused_local_variable

import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/textfield_widget.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/News/new_screen.dart';
import 'package:alfarooq_association/View/News/news_detaails_screen.dart';
import 'package:alfarooq_association/View/Profile/profile_screen.dart';
import 'package:alfarooq_association/View/Projects/Contribute_screen.dart';
import 'package:alfarooq_association/View/Projects/Project_details.dart';
import 'package:alfarooq_association/View/Projects/Project_screen.dart';
// import 'package:alfarooq_association/View/Projects/payment_method_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<News>listnew=[
     News(image: "assets/images/new1.png",
     title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....",
      date: "12 يوليو 2023 م"),
        News(image: "assets/images/new1.png",
     title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....",
      date: "12 يوليو 2023 م"),
     News(image: "assets/images/new1.png",
     title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....",
      date: "  01 يونيو 2023 م"),]
;
   
    
     List<CategoryImage> list=[
      CategoryImage(image: "assets/images/stethoscope 1.png", title: "مراكز الفاروق الطبية"),
      CategoryImage(image: "assets/images/teachings 1.png", title: "مركز الفاروق التعليمي"),
      CategoryImage(image: "assets/images/family-insurance 1.png", title: "شبكة تأمين الفاروق"),
      CategoryImage(image: "assets/images/help 1.png", title: "المتطوعين"),
      CategoryImage(image: "assets/images/funeral 1.png", title: "كفالة ايتام"),
      CategoryImage(image: "assets/images/zakat 1.png", title: "التبرع للمشاريع"),

     ];

     List<project> listproject=[
      project(image: "assets/images/pro1.png", tittle: "مشروع معالجة الأيتام ", numofbenefactor: " متبرع 42 ", prcofbenefactor: "45"),
      project(image: "assets/images/pro1.png", tittle: "2 مشروع معالجة الأيتام ", numofbenefactor: " 221 متبرع", prcofbenefactor: "75")

     ];
    final _scaffoldKey = GlobalKey<ScaffoldState>();
     int _current = 0;
     final myController = TextEditingController();
    return  WillPopScope(
      onWillPop: ()async {
        return false;
      },
      child: Scaffold(
        key: _scaffoldKey,
         endDrawer:  MyDrawer(),
        body: SingleChildScrollView(
          child: Column(children: [
            //--------AppBar----------------//
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,40,8,0),
              child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                    },
                    child: Image.asset("assets/images/Group 1.png")),
                  Text("الصفحة الرئيسية",style: TextStyle(
                    color: Colors.black,
                    fontSize: Sizes.width(context)*0.05),),
                    InkWell(
                      onTap: () {
                        _scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Image.asset("assets/images/Group 185.png")),
                ],),
              ),
            ),
      //-------------------Banner---------------------//
            Padding(
              padding: const EdgeInsets.fromLTRB(0,30,0,0),
              child: CarouselSlider(
              options: CarouselOptions(
                  height: 170,
                            aspectRatio: 16 / 5,
                            viewportFraction: 0.9,
                            initialPage: 0,
                            enableInfiniteScroll: true,
                            reverse: false,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            autoPlayAnimationDuration:
                            const Duration(milliseconds: 1000),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            enlargeCenterPage: true,
                            enlargeFactor: 0.3,
                            // onPageChanged: callbackFunction,
                            scrollDirection: Axis.horizontal,
                             onPageChanged:(index, reason) {
                               _current=index;
                             },
              ),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Card(
                      margin: EdgeInsets.only(
                        top: 2.0,
                        bottom: 10.0,
                      ),
                      elevation: 3.0,
                      // shadowColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        child:  Stack(
                          children: <Widget>[
                        
                            Image.asset(
                              "assets/images/1.png",
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly
                            ,
                              children: [
                                 ArrowWidget(icon: Icons.arrow_back_ios_new,),
                                SizedBox(width: Sizes.width(context)*0.02,),
                                 ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                   backgroundColor: MyColors.orange,
                                 shape:  
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                          
                              ),
                                  ),
                                  onPressed: (){}, child: Text("بنك الطعام")),
                            ],),
                          ),
                               SizedBox(width: Sizes.width(context)*0.05,),
                                Flexible(
                                  child: Text(
                                'وَيُطْعِمُونَ الطَّعَامَ عَلَى حُبِّهِ مِسْكِينًا وَيَتِيمًا وَأَسِيرًا',
                                style: TextStyle(
                                  fontSize: 16,
                                  // fontWeight: FontWeight.bold,
                                  // backgroundColor: Colors.black45,
                                  color: Colors.white,
                                ),
                                  ),
                                ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: ArrowWidget(icon: Icons.arrow_forward_ios)
                                   ),
                              ],),
                            ),
                                Padding(
                                  padding:  EdgeInsets.only(top:Sizes.height(context)*0.2),
                                  child: Center(
                                    child: DotsIndicator(
                                                        dotsCount: [1,2,3,4,5].length,
                                                        position: _current,
                                                      decorator: DotsDecorator(activeColor: MyColors.orange),
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                      ),
                                  ),
                                ),
                  
                          ],
                        ),
                      )
                  
                      );
                      
                }  );
       } )
                .toList(),
                    
                    
                    
                   
                  ),
            ),
            
        //-------------Search Bar -------------------//
    
        TextFormFieldWidget(hintText: "اكتب ما تريد البحث عنه هنا",
        icon: Icons.search,
        fillColor: Colors.grey[200],
        mycontroller: myController,
        )  , 
            
        //---------------Category-------------------//
        Container(
          width: Sizes.width(context),
          height: Sizes.height(context)*0.19,
          child: ListView.builder(
            reverse: true,
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: Sizes.width(context)*0.2,
                  height: Sizes.height(context)*0.05,
                  // color: Colors.red,
                  child: Column(children: [
                    CircleAvatar(
                      radius: 30,
                       backgroundColor:index.isEven?MyColors.white:MyColors.green,
                       child: Image.asset(list[index].image),
                    ),
                    Text(list[index].title,style: TextStyle(fontSize: 11,),textDirection: TextDirection.rtl,textAlign: TextAlign.center,)
                  ]),
                ),
              );
            }),
        ),
           
        //---------Wallet-------------------//
        Padding(
        padding: const EdgeInsets.fromLTRB(15.0,5,15,0),
          child: Container(
            width: Sizes.width(context),
            height: Sizes.height(context)*0.16,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: [
              Color(0XFFF1A931),
              Color(0xFFEFD09B)
            ])
           ),
           child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            textDirection: TextDirection.rtl,
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: MyColors.white,
                child: Icon(Icons.wallet_rounded,
                size: Sizes.width(context)*0.08,
                color: MyColors.green,),
              ),
              Text("محفظة الفاروق",style: TextStyle(
                fontSize: Sizes.width(context)*0.045),),
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                                   backgroundColor: MyColors.green,
                                 shape:  
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                          
                              ),
                                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContributeScreen()));
                  }, 
                  child: Text('تبرع الى المحفظة',style: TextStyle(fontWeight: FontWeight.bold),))
            ],
           ),
          ),
        ),   
           
         DividerWidget(text: "المشاريع",)  ,
          
          //---------------Projects--------------------//
    
         Container(
          width: Sizes.width(context),
          height: Sizes.height(context)*0.8,
          
           child: ListView.builder(
            shrinkWrap: false,
            physics: NeverScrollableScrollPhysics(),
              itemCount: listproject.length,
              itemBuilder: (BuildContext context, int index){
              return InkWell(
                onTap: () {
 Navigator.push(context, MaterialPageRoute(
  builder: (context)=>ProjectDetailsScreen(
    image: listproject[index].image, title: listproject[index].tittle,
     prc: listproject[index].prcofbenefactor)));

                },
                child: Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Container(
                    width: Sizes.width(context),
                   height: Sizes.height(context)*0.35,
                   decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 3,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    // color: Colors.red,
                 image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(listproject[index].image))
                   ),
                  child:Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:Sizes.height(context)*0.18),
                        child: Container(width: Sizes.width(context),
                        height: Sizes.height(context)*0.17,
                        decoration: BoxDecoration(
                             color: Colors.white,
                          borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                       
                        )),
                        child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                            textDirection: TextDirection.rtl,
                            children: [ 
                              Text(listproject[index].tittle,style: TextStyle(fontSize: Sizes.width(context)*0.05),)],),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [ 
                              RowTextWidget(text1: '${listproject[index].numofbenefactor} ',text2:": عدد المتبرعين   " ,),
                             RowTextWidget(text1: '%${listproject[index].prcofbenefactor} ', text2: ": نسبة التبرعات ")
                  
                              ],),
                  
                  
                         ),
                        ]),
                        ),
                      ),
                    ],
                  )
                  ),
                ),
              );
              }
            ),
         ),
         Padding(
           padding: const EdgeInsets.only(left:15),
           child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectScreen()));
                },
                child: Text('رؤية المزيد...',textDirection: TextDirection.rtl,
                style: TextStyle(decoration: TextDecoration.underline),),
              ),],),
         ),
          DividerWidget(text: "الأخبار",)  ,
          
          
          Container(
              width: Sizes.width(context),
                height: Sizes.height(context)*0.55,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: listnew.length,
              itemBuilder:(BuildContext context, int index){
               return  InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetailsScreen(image: listnew[index].image, tittle: listnew[index].title, date: listnew[index].date)));
                },
                 child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    width: Sizes.width(context),
                    height: Sizes.height(context)*0.15,
                    child: ListTile(
                      trailing: Image.asset(listnew[index].image),
                      title: Text(listnew[index].title,textDirection: TextDirection.rtl,),
                      subtitle: Row(textDirection: TextDirection.rtl,
                        children: [
                        Image.asset("assets/images/alfarooq.png",width: 40,height: 40,),
                        SizedBox(width: Sizes.width(context)*0.02,),
                        Text(listnew[index].date,textDirection: TextDirection.rtl,)
                      ],),
                    ),),
                  ),
               );
              } )
            
            ),
          
            
           Padding(
           padding: const EdgeInsets.only(left:15,bottom: 10),
           child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsScreen()));
                },
                child: Text('رؤية المزيد...',textDirection: TextDirection.rtl,
                style: TextStyle(decoration: TextDecoration.underline),),
              ),],),
         ),
    
            ]),
        ),
      ),
    );
  }
}

class DividerWidget extends StatelessWidget {
   DividerWidget({
    super.key,
    required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,10,0,0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Expanded(child: Divider(thickness: 1,
       color: Colors.grey,
       endIndent: 10,)),
       Text(text,style: TextStyle(fontSize: Sizes.width(context)*0.045),),
       Expanded(child: Divider(
         thickness: 1,
         indent: 10,
         color: Colors.grey,)),
      ],),
    );
  }
}

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    super.key,
    required this.text1,
    required this.text2
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(text1 ,
      style: TextStyle(fontSize: Sizes.width(context)*0.04,color: Colors.black,
      fontWeight: FontWeight.w700),),
    Text(text2,
    style: TextStyle(fontSize: Sizes.width(context)*0.04),),
    
    ],);
  }
}

class ArrowWidget extends StatelessWidget {
   ArrowWidget({
    super.key,
    required this.icon
  });
IconData? icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: () {
    
     },
      child: Container(
                    decoration: BoxDecoration(
                     color: MyColors.white,
                     borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                border: Border.all(
                                  color: MyColors.orange,
                                  width: 1.0,
                                ),
                                 ),
                                 child: Icon(icon,size: 17,color: Colors.grey,)),
    );
  }
}
class CategoryImage{
  final String image;
  final String title;

  CategoryImage({required this.image,required this.title});
}


class project{
  final String image;
  final String tittle;
  final String numofbenefactor;
  final String  prcofbenefactor;
 
 project({required this.image,required this.tittle,required this.numofbenefactor,required this.prcofbenefactor});
}


class News {
  final String image;
  final String title;
  final String date;
  News({required this.image,required this.title,required this.date});
}