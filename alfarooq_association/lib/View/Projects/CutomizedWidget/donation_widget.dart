import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Projects/Project_screen.dart';
import 'package:alfarooq_association/View/Projects/donation_details_screen.dart';
import 'package:flutter/material.dart';

class DonationWidget extends StatelessWidget {
  const DonationWidget({
    super.key,
    required this.listdonaation,
  });

  final List<donation> listdonaation;

  @override
  Widget build(BuildContext context) {
    return Container(
     width: Sizes.width(context),
     height: Sizes.height(context)*0.8,
     child: ListView.builder(
       shrinkWrap: true,
       itemCount: listdonaation.length,
       itemBuilder: (BuildContext context ,int index){
       return  InkWell(
           onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationDetailsScreen(image: listdonaation[index].image, title: listdonaation[index].title)));

           },
         child: Padding(
           padding: const EdgeInsets.all(5),
           child: Container(
            width: Sizes.width(context),
           height: Sizes.height(context)*0.35,
            decoration: BoxDecoration(
             color: Colors.amber,
             borderRadius: BorderRadius.circular(15),
             image: DecorationImage(image: AssetImage(listdonaation[index].image)
             ,fit: BoxFit.cover)
            ),
            child: Stack(
            children: [
         Padding(
           padding:  EdgeInsets.only(top: Sizes.height(context)*0.15),
           child: Container(
             width: Sizes.width(context),
             height: Sizes.height(context)*0.2,
            decoration: BoxDecoration(
             boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
             ],
              color: Colors.white,
             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                 Text(listdonaation[index].title,style: TextStyle(fontSize: Sizes.width(context)*0.05),)
               ],),
             ),
             ButtonWidget(data: "تفاصيل الكفالة", onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DonationDetailsScreen(image: listdonaation[index].image, title: listdonaation[index].title)));
             })
            ],),
           ),
         )
            ],
            ),
           ),
           ),
       );
     }),
    );
  }
}
