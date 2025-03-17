import 'package:flutter/material.dart';
import 'package:flutter_application_2_4/widget/widget_support.dart';

class Detail_Second extends StatefulWidget {
  const Detail_Second({super.key});

  @override
  State<Detail_Second> createState() => _Detail_SecondState();
}

class _Detail_SecondState extends State<Detail_Second> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child:
                  Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            ),
            Image.asset(
              "images/Pizza_2.png",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Italian dish",
                      style: AppWidget.semiBoolTextFeildStyle(),
                    ),
                    Text(
                      "Pizza",
                      style: AppWidget.boldTextFeildStyle(),
                    )
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  a.toString(),
                  style: AppWidget.boldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot",
              maxLines: 3,
              style: AppWidget.LightTextFeildStyle(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery time",
                  style: AppWidget.semiBoolTextFeildStyle(),
                ),
                SizedBox(
                  width: 25.0,
                ),
                Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.0,
                ),
                Text(
                  "45min",
                  style: AppWidget.semiBoolTextFeildStyle(),
                ),
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
                      Text(
                        "Total price",
                        style: AppWidget.semiBoolTextFeildStyle(),
                      ),
                      Text(
                        "\$25",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PTSerif-BoldItalic'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(Icons.shopping_cart_outlined,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
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
