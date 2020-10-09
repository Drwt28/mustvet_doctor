import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doctor/CustomWidgets.dart';
import 'package:doctor/Screens/Appointment/AppointmentFormScreen.dart';
import 'package:doctor/Screens/Constant.dart';
import 'package:doctor/Screens/HomeVisit/HomeVistScreen.dart';
import 'package:doctor/Screens/Lab/LabListPage.dart';
import 'package:doctor/Screens/Medical/MedicalListPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Jaipur'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_alert)),
        ],
      ),
      body: ListView(
        children: [
          CustomWidgets.CustomButtonWhite(onpressed: (){},text: 'Became a Member with us'),

          Container(
            height: 120,
            child: PageView(
              children: List.generate(8, (index) => Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
                  , color: Colors.purple,
                ),

              )),
              scrollDirection: Axis.horizontal,
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
            child: Text('What are you looking for ?',style: Theme.of(context).textTheme.headline6.copyWith(color: primary,fontSize: 17),),
          )
          ,ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [singleOptionListTile('Chat,Audio & Video Call', Icons.account_circle, 'Online Pet Consulting',onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>AppointmentFormScreen()));
            }),
            singleOptionListTile('Tests & check up', CupertinoIcons.lab_flask, 'Lab Test at Home',onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>LabListPage()));
            })
           ,singleOptionListTile('Medicines Near Home', CupertinoIcons.mail_solid, 'Medicines at Home',onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>MedicalListPage()));
              })
            ,singleOptionListTile('Book Home Visit', CupertinoIcons.home, 'Vet Doctors at Home',onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>HomeVisiScreen()));
              })
            ]
          )
        ],
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }



  Widget singleOptionListTile(title,image,description,{onPressed})
  {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      child: InkWell(
        onTap: onPressed,
        child: ListTile(

          title: Text(title,style: Theme.of(context).textTheme.headline6.copyWith(color: primary,fontSize: 17),),

          subtitle: Text(description,style: Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.black54),),

          trailing: IconButton(
            icon: Icon(CupertinoIcons.play_arrow,color: primary,),
          ),

          leading: Container(

            child: CircleAvatar(
              child: Icon(image),
              backgroundColor: Colors.white,
              radius: 24,
            ),
            decoration: BoxDecoration(
               border: Border.all(color: primary,width: 1),
              shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }

int currentPos = 0;
  buildBottomNavigationBar(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildSingleItem(icon: Icons.home,isSelected: currentPos == 0,title: 'Home',val: 0),
          buildSingleItem(icon: FontAwesomeIcons.calendar,isSelected: currentPos == 1,title: 'Appointment',val: 1),
          buildSingleItem(icon: FontAwesomeIcons.hospital,isSelected: currentPos == 2,title: 'Prescription',val: 2),
          buildSingleItem(icon: CupertinoIcons.paw_solid,isSelected: currentPos == 3,title: 'Pet',val: 3),
        ],
      ),
    );
  }

  Widget buildSingleItem({icon,title,isSelected,val}){
    return RaisedButton(
      color: isSelected?primary:Colors.white,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      onPressed:(){
        setState(() {
          currentPos=val;
        });
      },child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
        children: [
          Icon(icon, color :isSelected?Colors.white:Colors.grey),
          SizedBox(width: 8,),

        ],
    ),
      ),
    );
  }
}
