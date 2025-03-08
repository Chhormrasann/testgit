import 'package:flutter/material.dart';
import 'package:flutter_application_2_4/pages/login.dart';
import 'package:flutter_application_2_4/widget/widget_support.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: BoxDecoration(gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                Color(0xFFff5c30),
                Color(0xFFe74b1a),
              ])),
            ),
            Container(
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
              child: Text(""),
            ),
            Container(
              margin: EdgeInsets.only(top:40.0, left: 20, right: 20),
              child: Column(
                children: [
                  Center(child: Image.asset("images/Logo-png.png",height: 60,)
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5.0,
                     borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.5,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                             Text("Sign up", style: AppWidget.boldTextFeildStyle(),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          TextField(
                            decoration: InputDecoration(hintText: "Name", hintStyle: AppWidget.semiBoolTextFeildStyle(), prefixIcon: Icon(Icons.person_2_outlined)),
                          ),
                          SizedBox(height: 40,),
                          TextField(
                            decoration: InputDecoration(hintText: "Email", hintStyle: AppWidget.semiBoolTextFeildStyle(), prefixIcon: Icon(Icons.email_outlined)),
                          ), 
                          SizedBox(height: 40,),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(hintText: "Password", hintStyle: AppWidget.semiBoolTextFeildStyle(), prefixIcon: Icon(Icons.password_outlined)),
                          ), 
                          SizedBox(height: 20,),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text("Forget password", style: AppWidget.semiBoolTextFeildStyle(),)
                          ),
                          SizedBox(height: 40,),
                          Material(
                            elevation:6.0,
                            borderRadius: BorderRadius.circular(40),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(color: Color(0xffff5722),),
                              child: Center(child: Text("SIGN UP", style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'PTSerif-BoldItalic', fontWeight: FontWeight.bold),)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>LogIn()));
                    
                    },
                    child: Text("Already hava an account? Login", style: AppWidget.semiBoolTextFeildStyle(),)
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
