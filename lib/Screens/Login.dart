import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctor/CustomWidgets.dart';
import 'package:doctor/Screens/Constant.dart';
import 'package:doctor/Screens/HomePage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primary,
              ),
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: MediaQuery.of(context).size.height*.2,
                ),
              ),
              height: MediaQuery.of(context).size.height*.3,
            ),
            Container(
              height: 50,
              child: TabBar(
                labelColor: primary,
                unselectedLabelColor: Colors.grey,
                indicatorSize:TabBarIndicatorSize.label,
                tabs: [
                  Tab(child: Text("Sign in"),),
                  Tab(child: Text("Sign up"),),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child:TabBarView(
                children: [
                  SigninPage(),
                  SignUp()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SigninPage()
  {
   return ListView(
      scrollDirection : Axis.vertical,
      children: [
        CustomWidgets.CustomTextField(TextEditingController(), 'Phone Number',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Password',context),
      CustomWidgets.CustomButtonColored(onpressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },color: Colors.teal,text: 'Sign in'),
      CustomWidgets.CustomButtonIcon(onpressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },icon: FontAwesomeIcons.google,text: 'Google',color: Colors.red),
      CustomWidgets.CustomButtonIcon(onpressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },icon: FontAwesomeIcons.facebook,text: 'Facebook',color: Colors.blue[800]),

      ],
    );
  }
  Widget SignUp()
  {
   return ListView(
      scrollDirection : Axis.vertical,
      children: [
        CustomWidgets.CustomTextField(TextEditingController(), 'Name',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'E-mail id',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Phone number',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Address',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Pincode',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Password',context),
        CustomWidgets.CustomTextField(TextEditingController(), 'Confirm Password',context),

      CustomWidgets.CustomButtonColored(onpressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },color: Colors.teal,text: 'Sign up'),
      ],
    );
  }
}
