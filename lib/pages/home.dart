import 'package:flutter/material.dart';
import 'package:flutter_application_2_4/pages/details.dart';
import 'package:flutter_application_2_4/pages/second_details.dart';
import 'package:flutter_application_2_4/widget/widget_support.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool icecream=false, pizza=false, salad=false, burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top:50, left: 30,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //កំណត់​ Text Delicious food អោយមកខាងដើមscreen.
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, //កំណត់border ពីtext welcome និង Icon
                  children: [
                    Text(
                      "welcome,",
                      style: AppWidget.boldTextFeildStyle(),
                    ),
                     Container(
                      margin: EdgeInsets.only(right: 20.0),
                      padding: EdgeInsets.all(2), // កំណត់ទំហំIcon។
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Icon(Icons.shopping_cart, color: Colors.white,),
                ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                      "Delicious Food",
                      style: AppWidget.HeadlineTextFeildStyle(),
                    ),
                    Text(
                      "Dicover and get great",
                      style: AppWidget.LightTextFeildStyle(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30.0),
                      child: showItem()
                    ),
          
                    SizedBox(height: 20,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Details()));
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.all(14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("images/salad1.png", height: 150, width: 150,),
                                      Text("Veggie Taco Hash", style: AppWidget.semiBoolTextFeildStyle(),),
                                      SizedBox(height: 5.0,),
                                      Text("Fresh and healthy", style: AppWidget.LightTextFeildStyle(),),
                                       SizedBox(height: 5.0,),
                                      Text("\$25", style: AppWidget.semiBoolTextFeildStyle(),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:15.0,),
                           GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Detail_Second()));
                              },
                             child: Container(
                              margin: EdgeInsets.all(4),
                               child: Material(
                                elevation: 5.0,
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  padding: EdgeInsets.all(14),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("images/Pizza_2.png", height: 150, width: 150,),
                                      Text("Mix Veg Salad", style: AppWidget.semiBoolTextFeildStyle(),),
                                      SizedBox(height: 5.0,),
                                      Text("Spicy with Onion", style: AppWidget.LightTextFeildStyle(),),
                                       SizedBox(height: 5.0,),
                                      Text("\$28", style: AppWidget.semiBoolTextFeildStyle(),)
                                    ],
                                  ),
                                ),
                              ),
                             ),
                           ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/salad1.png", height: 120, width: 120,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("Mediterranean Chickpea Salad", style: AppWidget.semiBoolTextFeildStyle(),)
                        
                                  ),
                                  SizedBox(height: 5.0,),
                                    Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("Honey good cheese", style: AppWidget.LightTextFeildStyle(),)
                        
                                  ),
                                   SizedBox(height: 5.0,),
                                    Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("\$28", style: AppWidget.semiBoolTextFeildStyle(),)
                        
                                  ),
                                ],
                              ),
                            ],
                         
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ), 
                     Container(
                      margin: EdgeInsets.only(right: 20.0),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/Pizza_2.png", height: 120, width: 120,
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("Mediterranean Chickpea Salad", style: AppWidget.semiBoolTextFeildStyle(),)
                        
                                  ),
                                  SizedBox(height: 5.0,),
                                    Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("Honey good cheese", style: AppWidget.LightTextFeildStyle(),)
                        
                                  ),
                                   SizedBox(height: 5.0,),
                                    Container(
                                    width: MediaQuery.of(context).size.width/2,
                                    child: Text("\$25", style: AppWidget.semiBoolTextFeildStyle(),)
                        
                                  ),
                                ],
                              ),
                            ],
                         
                          ),
                        ),
                      ),
                    ),   
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showItem(){
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        icecream=true;
                        pizza=false;
                        salad=false;
                        burger=false;
                        setState(() {
                          
                        });
                      },
                      child: Material(
                        elevation: 5.0,   
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(color: icecream? Colors.red: Colors.black, borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/icecream_icon.png", height: 40, width: 40,),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        icecream=false;
                        pizza=true;
                        salad=false;
                        burger=false;
                        setState(() {
                          
                        });
                      },
                      child: Material(
                        elevation: 5.0,   
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(color: pizza? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/pizza.png", height: 40, width: 40, ),
                        ),
                      ),
                    ),
                     GestureDetector(
                      onTap: (){
                        icecream=false;
                        pizza=false;
                        salad=true;
                        burger=false;
                        setState(() {
                          
                        });
                      },
                      child: Material(
                        elevation: 5.0,   
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(color: salad? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/salad.png", height: 40, width: 40,),
                        ),
                      ),
                    ),
                     GestureDetector(
                      onTap: (){
                        icecream=false;
                        pizza=false;
                        salad=false;
                        burger=true;
                        setState(() {
                          
                        });
                      },
                      child: Material(
                        elevation: 5.0,   
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(color: burger? Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: Image.asset("images/burger.png", height: 40, width: 40, ),
                        ),
                      ),
                    ),
                  ],
                );
  }
}