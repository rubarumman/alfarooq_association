// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:alfarooq_association/Core/CustomizedWidget/button_widget.dart';
import 'package:alfarooq_association/Core/CustomizedWidget/customized_drawer.dart';
import 'package:alfarooq_association/Core/appBar.dart';
import 'package:alfarooq_association/Core/colors.dart';
import 'package:alfarooq_association/Core/sizes.dart';
import 'package:alfarooq_association/View/Home/home_screen.dart';
import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    List<PaymentMethod> listayment = [
      PaymentMethod(
          image: "assets/images/credit-card.png", title: "بطاقة الإتمان"),
      PaymentMethod(
          image: "assets/images/Orange-Money-logo.png", title: "أورانج موني"),
      PaymentMethod(
          image: "assets/images/Artboard-9@3x-8 1.png", title: "يو واليت"),
      PaymentMethod(
          image: "assets/images/zain_cash-01-removebg-preview 1.png",
          title: "زين كاش"),
      PaymentMethod(image: "assets/images/new-logo-1 1.png", title: "آية باي"),
      PaymentMethod(image: "assets/images/pay.png", title: "باي بال")
    ];
    final _scaffoldKey = GlobalKey<ScaffoldState>();
    var _result;
    int currentindex;
    int _currentTimeValue = 1;
    String paymentmethod = "";

    return Scaffold(
        key: _scaffoldKey,
        endDrawer: MyDrawer(),
        body: SingleChildScrollView(
            child: Column(children: [
          AppbarWidget(scaffoldKey: _scaffoldKey, text: "طرق الدفع"),
          SizedBox(
            height: Sizes.statusBar(context),
          ),
          Container(
            width: Sizes.width(context),
            height: Sizes.height(context) * 0.7,
            child: ListView.builder(
                itemCount: listayment.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Sizes.width(context),
                      height: Sizes.height(context) * 0.08,
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.gold),
                          borderRadius: BorderRadius.circular(10)),
                      child: RadioListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Sizes.width(context) * 0.05,
                            ),
                            Text(
                              listayment[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                            Image.asset(listayment[index].image),
                          ],
                        ),
                        // currentindex==index?MyColors.green:MyColors.white
                        value: listayment[index].title,
                        groupValue: _result,
                        onChanged: (value) {
                          setState(() {
                            _result = value;
                            currentindex = index;
                            print(_result);
                            log(_result);
                          });
                        },
                         selected: _result == listayment[index].title,
                        activeColor: _result == listayment[index].title
                            ? MyColors.green
                            : Colors.black,
                        //selected: _result == listayment[index].title,
                      ),
                    ),
                  );
                }),
          ),
          ButtonWidget(
              data: "أكمل عملية الدفع",
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Center(
                        child: SingleChildScrollView(
                            child: Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: Sizes.height(context) * 0.5,
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
                                  top: Sizes.height(context) * 0.02,
                                  left: Sizes.width(context) * 0.19,
                                  child: Image.asset(
                                    "assets/images/charity_6565124 1.png",
                                    width: 150,
                                  )),
                              Positioned(
                                top: Sizes.height(context) * 0.18,
                                left: Sizes.width(context) * 0.27,
                                child: Text(
                                  "جزاك الله خيراً",
                                  style: TextStyle(
                                      fontSize: Sizes.width(context) * 0.055),
                                ),
                              ),
                              Positioned(
                                top: Sizes.height(context) * 0.24,
                                left: Sizes.width(context) * 0.12,
                                child: Text(
                                  "   :  قال صلى الله عليه وسلم  \n إن الصدقَةَ تُطْفِئُ غَضَبَ الرَّبِّ، وتَدْفَعُ\n                  مِيتَة السُّوءِ  ",
                                  style: TextStyle(
                                      fontSize: Sizes.width(context) * 0.04),
                                ),
                              ),
                              Positioned(
                                  top: Sizes.height(context) * 0.35,
                                  left: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 15, 8.0, 15),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: MyColors.green,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            fixedSize: Size(
                                                Sizes.width(context) * 0.7,
                                                Sizes.height(context) * 0.07)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen()));
                                        },
                                        child: Text(
                                          "العودة للصفحة الرئيسية",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  Sizes.width(context) * 0.05),
                                        )),
                                  )),
                            ]),
                          ),
                        )),
                      );
                    });
              })
        ])));
  }
}

class PaymentMethod {
  String image;
  String title;

  PaymentMethod({required this.image, required this.title});
}
