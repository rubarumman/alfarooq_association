
import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';

class OrphanScreen extends StatefulWidget {
  const OrphanScreen({super.key,required this.name});
 final String name;

  @override
  State<OrphanScreen> createState() => _OrphanScreenState();
}

class _OrphanScreenState extends State<OrphanScreen> {
  @override
  Widget build(BuildContext context) {
     List<String> list = <String>['كفالة لطلاب المدارس', 'كفالة تدريسية', 'كفالة إطعام يتيم'];
     
      String dropdownValue = list.first;
   final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
   
        child: Column(
        
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text:"كفالة اليتيم"),

        // Edit_profileWidget(hinttext: widget.name, name: "assets/images/Vector (3).png"),
        Directionality(
          textDirection: TextDirection.rtl,
          child: DropdownButtonFormField<String>(
            hint: Text("نوع الكفالة"),
            // isExpanded: true,
            
            decoration:  InputDecoration(
               prefix: Image.asset("assets/images/Vector (3).png",
               color: MyColors.grey,),
    border: OutlineInputBorder(
      borderRadius:BorderRadius.all(Radius.circular(10))
    ),
  ),

            borderRadius: BorderRadius.circular(10),
            menuMaxHeight: Sizes.height(context)*0.4,
            padding: EdgeInsets.all(8),
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down_outlined),
              elevation: 16,
              // style: const TextStyle(color: Colors.deepPurple),
              // underline: Container(
              //   height: 2,
              //   color: Colors.deepPurpleAccent,
              // ),
              onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
         
          });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,textDirection: TextDirection.rtl,),
          );
              }).toList(),
            ),
        ),
      // Edit_profileWidget(hinttext: "المبلغ", name: "assets/images/Vector (1).png"),
      // Edit_profileWidget(hinttext: "تاريخ الدفع", name: "assets/images/Vector (2).png"),



      Padding(
        padding:  EdgeInsets.only(top:Sizes.height(context)*0.25),
        child: ButtonWidget(data: "إنهاء العملية", onPressed: (){}),
      )
       
       

          ])));
  }
}