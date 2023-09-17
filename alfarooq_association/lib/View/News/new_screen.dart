import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/News/news_detaails_screen.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<News> listnew=[
      News(image: "assets/images/new1.png", title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....", date: "12 يوليو 2023 م"),
      News(image: "assets/images/12965973_1168318186525523_1997943235_n-666x350-1 1.png", title: "جمعية الفاروق الخيرية تقيم حفل افطار خيري لدعم الايتام...", date: "01 يونيو 2023 م"),
      News(image: "assets/images/IMG_0755 1.png", title: "جمعية الفاروق الخيرية تحتفل بيوم اليتيم العربي", date: "09 كانون الأول 2023 م"),
      News(image: "assets/images/12965973_1168318186525523_1997943235_n-666x350-1 1.png", title: "جمعية الفاروق الخيرية تقيم حفل افطار خيري لدعم الايتام...", date: "01 يونيو 2023 م"),
      News(image: "assets/images/new1.png", title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....", date: "12 يوليو 2023 م"),
      News(image: "assets/images/IMG_0755 1.png", title: "جمعية الفاروق الخيرية تحتفل بيوم اليتيم العربي", date: "09 كانون الأول 2023 م"),
      News(image: "assets/images/IMG_0755 1.png", title: "جمعية الفاروق الخيرية تحتفل بيوم اليتيم العربي", date: "09 كانون الأول 2023 م"),
     News(image: "assets/images/new1.png", title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....", date: "12 يوليو 2023 م"),
     News(image: "assets/images/new1.png", title: "جمعية_الفاروق الخيرية وبالتعاون مع جمعية الآفاق الخيرية للتعليم.....", date: "12 يوليو 2023 م"),

    ];
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    return  Scaffold(
         key: _scaffoldKey,
       endDrawer:  MyDrawer(),
      body: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
        child: Column(
          children: [
         AppbarWidget(scaffoldKey: _scaffoldKey,text: "الأخبار",),

         Container(width: Sizes.width(context),
           height: Sizes.height(context)*0.9,
           child: ListView.builder(
            shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
            itemCount: listnew.length,
            itemBuilder: (BuildContext context ,int index){
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                NewsDetailsScreen(image: listnew[index].image,
                 tittle: listnew[index].title, date: listnew[index].date)));
              },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListTile(
                  trailing: Image.asset(listnew[index].image),
                  title: Text(listnew[index].title,textDirection: TextDirection.rtl,),
                  subtitle: Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text(listnew[index].date,textDirection: TextDirection.rtl,),
                    SizedBox(width: 10,),
                    Image.asset("assets/images/alfarooq.png",width: 40,),
                    
                  ],),
                ),
              ),
            );
           }),

         ),

        
          ])));
  }
}

class News{
  String image;
  String title;
  String date;

  News({required this.image,required this.title,required this.date});

}