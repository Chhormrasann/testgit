import 'package:flutter/material.dart';
import 'package:flutter_application_2_4/widget/widget_support.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,
              )),
              Image.asset(
                "images/salad1.png", 
                width: MediaQuery.of(context).size.width, 
                height: MediaQuery.of(context).size.height/2.5, 
                fit: BoxFit.fill
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mediterranean", style: AppWidget.semiBoolTextFeildStyle (),),
                    Text("Chickpea Salad", style: AppWidget.boldTextFeildStyle(),),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a>1) {
                     --a; 
                    }
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(10),),
                    child: Icon(Icons.remove, color: Colors.white,),
                  ),
                ),
                SizedBox(width: 20.0,),
                Text(a.toString(), style: AppWidget.boldTextFeildStyle(),),
                SizedBox(width: 20.0,),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {
                      
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(10),),
                    child: Icon(Icons.add, color: Colors.white,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text("A salad is a dish consisting of mixed ingredients, frequently vegetables. They are typically served chilled or at room temperature, though some can be served warm. Condiments and salad dressings, which exist in a variety of flavors, are used to make a salad.", maxLines: 3,
            style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Text("Delivery time", style: AppWidget.semiBoolTextFeildStyle(),),
                SizedBox(
                  width: 25.0,
                  ),
                Icon(Icons.alarm, color: Colors.black,),
                SizedBox(
                  width: 5.0,
                  ),
                Text("30min",style: AppWidget.semiBoolTextFeildStyle(),),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text("Total price", style: AppWidget.semiBoolTextFeildStyle(),),
                       Text("\$30", style: AppWidget.boldTextFeildStyle(),),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 18.0, fontFamily: 'PTSerif-BoldItalic'), ),
                        SizedBox(width: 10.0,),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey, borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
                        ),
                        SizedBox(width: 10.0,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
