// ignore_for_file: deprecated_member_use

import 'package:alfarooq_association/Controller/ProjectDetails/project_details_controller.dart';
import 'package:alfarooq_association/Controller/Projects/project_controller.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Projects/Project_details.dart';
import 'package:alfarooq_association/View/Projects/Project_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AllProjectWidget extends StatelessWidget {
  const AllProjectWidget({
    super.key,
    required this.listproject,
  });

  final List<Project> listproject;

  @override
  Widget build(BuildContext context) {
    final ProjDetailsContr = context.read<ProjectDetailsController>();
    return 
      Consumer<ProjectsController>(
          builder: (context, ProjectsController, _) {
             final projectModel = ProjectsController.projectModel;
    return Container(
      width: Sizes.width(context),
      height: Sizes.height(context)*0.8,
      child: ListView.builder(
       shrinkWrap: true,
       
       itemCount: listproject.length,
       itemBuilder: (BuildContext context ,int index){
       return InkWell(
        onTap: () {
        
         ProjDetailsContr.getProjectDetails(projectModel.data![index].id, 
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectDetailsScreen(image: listproject[index].image,title: listproject[index].title,prc: listproject[index].prc,))));
        
        },
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
            width: Sizes.width(context)*0.10,
                    height: Sizes.height(context)*0.45,
                    decoration: BoxDecoration(
                                    boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
             ],
                     borderRadius: BorderRadius.circular(20),
             image:  DecorationImage(
             image: AssetImage(listproject[index].image,)
             ,fit: BoxFit.cover,repeat: ImageRepeat.noRepeat)
                    ),
              child: Stack(
               children: [
                 Padding(
                   padding:  EdgeInsets.only(top:Sizes.height(context)*0.18),
                   child: Container(
                      width: Sizes.width(context),
                      height: Sizes.height(context)*0.43,
                      
                      decoration: BoxDecoration(
                       color: MyColors.white,
                       borderRadius: BorderRadius.only(
                         bottomRight: Radius.circular(15),
                         bottomLeft: Radius.circular(15))
                      ),
                      child:Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                          Padding(
                                 padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                            child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                            
                                                    children: [
                                                      Text(
                                            projectModel
                                                .data![index].name
                                                .toString()
                                                ,style: TextStyle(fontSize: Sizes.width(context)*0.05)),
                                                   ]),
                          ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                                         
                         children: [
                           Text("نسبة التبرعات",style: TextStyle(fontSize: Sizes.width(context)*0.05,color: MyColors.greyfont),),
                                                ]),
                       ),
       
                      Row(children: [
                         Padding(
           padding: EdgeInsets.all(8),
           child: new LinearPercentIndicator(
             barRadius: Radius.circular(15),
             isRTL: true,
             backgroundColor: Colors.grey[200],
             width: MediaQuery.of(context).size.width - 60,
             // animation: true,
             lineHeight: 10.0,
             animationDuration: 2000,
             percent: double.parse(projectModel.data![index].percentage.toString().substring(0,1))/100,
             // center: Text(listproject[index].prc),
             linearStrokeCap: LinearStrokeCap.roundAll,
             progressColor: MyColors.green,
           ),
         ),
         Text("${projectModel.data![index].percentage.toString().substring(0, 1)}%",style: TextStyle(color:MyColors.green),)
                      ],),
           ButtonWidget(data: "تفاصيل المشروع", onPressed: (){
             ProjDetailsContr.getProjectDetails(projectModel.data![index].id,(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectDetailsScreen(image: listproject[index].image,title: listproject[index].title,prc: listproject[index].prc,)));
           });
           })
                       ],
                      )
                   ),
                 )
               ],
              ),      
                    ),
         ),
       );
      }),
    );});
  }
}