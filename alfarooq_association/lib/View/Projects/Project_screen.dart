// ignore_for_file: must_be_immutable, unused_local_variable
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Projects/CutomizedWidget/all_project_widget.dart';
import 'package:alfarooq_association/View/Projects/CutomizedWidget/donation_widget.dart';
import 'package:flutter/material.dart';


class ProjectScreen extends StatefulWidget {
  int? id;
   ProjectScreen({super.key,this.id});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
int currentindex=0;
String tittle="الكل";

  @override
  Widget build(BuildContext context) {
    List<String> list=[
      "الكل",
      "كفالة ايتام",
      "تطوع",
      "علاج",
      "كفالة طلاب"
    ];

    List<Project> listproject=[
      Project(image: "assets/images/pro1.png", title: "مشروع معالجة الأيتام", prc: "75"),
      Project(image: "assets/images/pro1.png", title: "مشروع تبرع للطلاب الأيتام", prc: "55"),
    ];

    List<donation> listdonaation=[
      donation(image: "assets/images/donation2.png", title: "مشروع كفالة الطلاب الأيتام"),
            donation(image: "assets/images/donation2.png", title:"مشروع التطوع لإفراح الأيتام"),
      donation(image: "assets/images/donation2.png", title: "مشروع كفالة الطلاب الأيتام"),

    ];
    
     final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
   
        child: Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text:"المشاريع"),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(width: Sizes.width(context),
             height: Sizes.height(context)*0.06,
            //  color: Colors.red,
             child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              reverse: true,
              itemBuilder: (BuildContext context,int index){
                 return InkWell(
                  onTap: () {
                   setState(() {
                      currentindex=index;
                       tittle=list[index];
                   });
                  
                  },
                   child: Padding(
                     padding: const EdgeInsets.all(5),
                     child: Container(width: Sizes.width(context)*0.2,
                     height: Sizes.height(context)*0.05,
                    decoration: BoxDecoration(
                      color: currentindex==index? MyColors.green:MyColors.white ,
                     border: Border.all(color: MyColors.gold),
                     borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text(list[index],textAlign: TextAlign.center,)),
                     ),
                   ),
                 );
             })),
         ),
         tittle=="كفالة ايتام"?
           DonationWidget(listdonaation: listdonaation)
         :
         AllProjectWidget(listproject: listproject)
         

          ])
      ));
  }
}




class Project{
  String image;
  String title;
  String prc;

  Project({required this.image,required this.title,required this.prc});
}


class donation{
  String image;
  String title;
  donation({required this.image,required this.title});
}